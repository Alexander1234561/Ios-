//
//  UIWatch.swift
//  SelfUIView
//
//  Created by Александр on 03.10.2020.
//  Copyright © 2020 Александр. All rights reserved.
//

import UIKit

@IBDesignable
class UIWatch: UIView {
    
    var topMarker: UIView = UIView()
    var leftMarker: UIView = UIView()
    var rightMarker: UIView = UIView()
    var bottomMarker: UIView = UIView()
    var hourLine: UIView = UIView()
    var minuteLine: UIView = UIView()
    var secondLine: UIView = UIView()
    var coma: UIView = UIView()
    
    var isSetUp: Bool = false
    var markerColor: UIColor = UIColor.black
    @IBInspectable var hourColor: UIColor = UIColor.black{
        didSet{ hourLine.backgroundColor = hourColor }
    }
    @IBInspectable var minuteColor: UIColor =  UIColor.black{
         didSet{ minuteLine.backgroundColor = minuteColor }
    }
    @IBInspectable var secondColor: UIColor = UIColor.black{
        didSet{ secondLine.backgroundColor = secondColor }
    }
    
    var markerWidth: CGFloat = 8
    var markerHeight: CGFloat = 32
    
    @IBInspectable var hourLineWidth: CGFloat = 0 {
        didSet{ updateHourLineFrame() }
    }
    @IBInspectable var minuteLineWidth: CGFloat = 4 {
        didSet{ updateMinuteLineFrame() }
    }
    @IBInspectable var secondLineWidth: CGFloat = 2 {
        didSet{ layoutIfNeeded() }
    }
    
    var lengthLine: CGFloat = 40 
    
    //Здесь можно поставить время
    var hours: CGFloat = 11
    
    var minutes: Float = 10
    
    var second: Float = 30
    
    override func layoutSubviews() {
        
        super.layoutSubviews()
        
        let frameWidth = frame.size.width
        let frameHeight = frame.size.height
        
        //Точка в центре
        coma.frame = CGRect(x: frameWidth/2 - 4, y: frameHeight/2 - 4, width: 10, height: 10)
        coma.layer.cornerRadius = 4
        coma.backgroundColor = UIColor.black
        
        //Часовая стрелка
        hourLine.layer.anchorPoint = CGPoint(x: 0.5, y: 1)
        hourLine.frame = CGRect(x: frameWidth/2 - hourLineWidth/2, y: lengthLine, width: hourLineWidth, height: frameHeight/2 - lengthLine)
        hourLine.backgroundColor = hourColor
        
        //Минутная стрелка
        minuteLine.layer.anchorPoint = CGPoint(x: 0.5, y: 1)
        minuteLine.frame = CGRect(x: frameWidth/2 - minuteLineWidth/2, y: lengthLine, width: minuteLineWidth, height: frameHeight/2 - lengthLine)
        minuteLine.backgroundColor = minuteColor
        
        //Секундная стрелка
        secondLine.layer.anchorPoint = CGPoint(x: 0.5, y: 1)
        secondLine.frame = CGRect(x: frameWidth/2 - secondLineWidth/2, y: lengthLine, width: secondLineWidth, height: frameHeight/2 - lengthLine)
        secondLine.backgroundColor = secondColor
        
        //Маркеры
        topMarker.frame = CGRect(x: frameWidth / 2 - markerWidth/2, y: 0, width: markerWidth, height: markerHeight)
        
        leftMarker.frame = CGRect(x: 0, y: frameHeight / 2 - markerWidth/2, width: markerHeight, height: markerWidth)
        
        rightMarker.frame = CGRect(x: frameWidth - markerHeight, y: frameHeight / 2 - markerWidth/2, width: markerHeight, height:  markerWidth)
        
        bottomMarker.frame = CGRect(x: frameWidth / 2 - markerWidth/2, y: frameHeight - markerHeight, width: markerWidth, height: markerHeight)
        
        layer.cornerRadius = frame.size.width/2
        layer.backgroundColor = UIColor.yellow.cgColor
        
        updateHours()
        updateMinutes()
        updateSeconds()
        
        if isSetUp { return }
        isSetUp = true
        
        addSubview(hourLine)
        addSubview(minuteLine)
        addSubview(secondLine)
        addSubview(coma)
        
        for i in [topMarker, leftMarker, rightMarker, bottomMarker]{
            i.backgroundColor = markerColor
            addSubview(i)
        }
        updateHours()
        updateMinutes()
        updateSeconds()
    }
    
    func updateHourLineFrame() {
        
        let frameWidth = frame.size.width
        let frameHeight = frame.size.height
        
        hourLine.layer.anchorPoint = CGPoint(x: 0.5, y: 1)
        hourLine.frame = CGRect(x: frameWidth/2 - hourLineWidth/2, y: lengthLine, width: hourLineWidth, height: frameHeight/2 - lengthLine)
    }
    
    func updateMinuteLineFrame() {
        
        let frameWidth = frame.size.width
        let frameHeight = frame.size.height
        
        minuteLine.layer.anchorPoint = CGPoint(x: 0.5, y: 1)
        minuteLine.frame = CGRect(x: frameWidth/2 - minuteLineWidth/2, y: 0, width: minuteLineWidth, height: frameHeight/2)
    }
    
    func updateHours() {
        let angle = CGFloat.pi * 2 * ((hours + CGFloat(minutes * 0.01)) / CGFloat(12))
        hourLine.transform = CGAffineTransform(rotationAngle: angle)
    }
    
    func updateMinutes() {
        let angle = CGFloat.pi * 2 * ((CGFloat(minutes) + CGFloat(second * 0.01)) / CGFloat(60))
        minuteLine.transform = CGAffineTransform(rotationAngle: angle)
    }
    
    func updateSeconds() {
        let angle = CGFloat.pi * 2 * (CGFloat(second) / CGFloat(60))
        secondLine.transform = CGAffineTransform(rotationAngle: angle)
        print(angle)
    }

}
