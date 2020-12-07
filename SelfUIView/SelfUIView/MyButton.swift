//
//  MyButton.swift
//  SelfUIView
//
//  Created by Александр on 03.10.2020.
//  Copyright © 2020 Александр. All rights reserved.
//

import UIKit

@IBDesignable
class MyButton: UIButton {
    
    @IBInspectable var colorBorder: UIColor = UIColor.black {
        didSet{ self.layer.borderColor = colorBorder.cgColor }
    }
    
    @IBInspectable var widthBorder: CGFloat = 2{
        didSet{ layoutIfNeeded() }
    }
    @IBInspectable var cornerRadius: CGFloat = 20 {
        didSet{ self.layer.cornerRadius = cornerRadius }
    }

    override func layoutSubviews() {
        super.layoutSubviews()

        self.layer.cornerRadius = cornerRadius
        self.layer.borderWidth = widthBorder
        self.layer.borderColor = colorBorder.cgColor
    }

}
