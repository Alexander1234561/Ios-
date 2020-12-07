//
//  SegmentedControlMy.swift
//  SelfUIView
//
//  Created by Александр on 06.10.2020.
//  Copyright © 2020 Александр. All rights reserved.
//

import UIKit

protocol SegmentedControlMyDelegate: NSObjectProtocol{
    func segmentChoose(_ segmentedControlMy: SegmentedControlMy)
}


@IBDesignable
class SegmentedControlMy: UIView {
    
    
    weak var delegate: SegmentedControlMyDelegate?
    
    var widthBorder: CGFloat = 1
    @IBInspectable var colorBorder: UIColor = UIColor.black {
        didSet{ self.layer.borderColor = colorBorder.cgColor }
    }
    
    var firstSegment: UIView = UIView()
    var secondSegment: UIView = UIView()
    
    var firstSegmentText: UILabel = UILabel()
    var secondSegmentText: UILabel = UILabel()
    
    @IBInspectable var activeColor: UIColor = UIColor.green {
        didSet{
            if (firstSegment.backgroundColor != passiveColor){ firstSegment.backgroundColor = activeColor }
            else{ secondSegment.backgroundColor = activeColor }
        }
    }
    @IBInspectable var passiveColor: UIColor = UIColor.black {
        didSet{
            if (firstSegment.backgroundColor != activeColor){ firstSegment.backgroundColor = passiveColor }
            else{ secondSegment.backgroundColor = passiveColor }
        }
    }
    
    var backTextColor: UIColor = UIColor.white
    var textBounds: CGFloat = 10
    @IBInspectable var textFirst: String = "1" {
        didSet { firstSegmentText.text = textFirst }
    }
    @IBInspectable var textSecond: String = "2" {
        didSet { secondSegmentText.text = textSecond }
    }
    
    override func layoutSubviews() {
        
        let frameWidth = frame.size.width
        let frameHeight = frame.size.height
        
        //Подложка 1
        firstSegment.frame = CGRect(x: 0, y: 0, width: frameWidth/2, height: frameHeight)
        firstSegment.backgroundColor = activeColor
        
        //Подложка 2
        secondSegment.frame = CGRect(x: frameWidth/2, y: 0, width: frameWidth/2, height: frameHeight)
        secondSegment.backgroundColor = passiveColor
        
        //Текст 1
        firstSegmentText.frame = CGRect(x: textBounds, y: textBounds, width: frameWidth/2 - 2 * textBounds, height: frameHeight - 2 * textBounds)
        firstSegmentText.backgroundColor = backTextColor
        firstSegmentText.text = textFirst
        firstSegmentText.textAlignment = .center
        
        //Текст 2
        secondSegmentText.frame = CGRect(x: frameWidth/2 + textBounds, y: textBounds, width: frameWidth/2 - 2 * textBounds, height: frameHeight - 2 * textBounds)
        secondSegmentText.backgroundColor = backTextColor
        secondSegmentText.text = textSecond
        secondSegmentText.textAlignment = .center
       
        
        addSubview(firstSegment)
        addSubview(secondSegment)
        addSubview(firstSegmentText)
        addSubview(secondSegmentText)
        
        self.layer.borderColor = colorBorder.cgColor
        
        self.layer.borderWidth = widthBorder
    }
    override func touchesEnded(_ touches: Set<UITouch>, with event: UIEvent?) {
        if firstSegment.backgroundColor == activeColor{
            firstSegment.backgroundColor = passiveColor
            secondSegment.backgroundColor = activeColor
        }
        else {
            firstSegment.backgroundColor = activeColor
            secondSegment.backgroundColor = passiveColor
        }
        delegate?.segmentChoose(self)
    }
}
