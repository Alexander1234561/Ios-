//
//  ViewController.swift
//  Animation
//
//  Created by Александр on 09.10.2020.
//  Copyright © 2020 Александр. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var redSquare: UIView!
    @IBOutlet weak var numLabel: UILabel!
    @IBOutlet weak var leadingConstraitSquare: NSLayoutConstraint!
    @IBOutlet weak var topConstraitSquare: NSLayoutConstraint!
    @IBOutlet weak var heightConstrait: NSLayoutConstraint!
    
    var num: Int = 0
    var animating: Bool = false
    
    func animationIn() {
        if (num == 0){
            if (animating){
                self.redSquare.layer.removeAnimation(forKey: "transform.rotation")
                animating = !animating
            }
            UIView.animate(withDuration: 2, delay: 0,options: .autoreverse, animations: {self.redSquare.backgroundColor = UIColor.yellow}){(isCompleted) in
            self.redSquare.backgroundColor = UIColor.red
            }
        }
        
        if (num == 1){
            let x = leadingConstraitSquare.constant
            let y = topConstraitSquare.constant
    
            UIView.animate(withDuration: 2, delay: 0, usingSpringWithDamping: 1, initialSpringVelocity: 0.3,options: .autoreverse, animations: {
                self.leadingConstraitSquare.constant = UIScreen.main.bounds.size.width - self.redSquare.frame.width
                self.topConstraitSquare.constant = 0
                self.view.layoutIfNeeded()
            })  { (isCompleted) in
                self.leadingConstraitSquare.constant = x
                self.topConstraitSquare.constant = y
                self.view.layoutIfNeeded()
            }
        }
        if (num == 2) {
            let animation = CABasicAnimation(keyPath: "cornerRadius")
            animation.fromValue = 0
            animation.toValue = self.redSquare.frame.width / 2
            animation.duration = 2
            redSquare.layer.add(animation, forKey: "cornerRadius")
        }
        if (num == 3) {
            UIView.animate(withDuration: 2, delay: 0, options: .autoreverse, animations: {
                self.redSquare.transform = CGAffineTransform(rotationAngle: CGFloat.pi)
            }){ (isCompleted) in
                 self.redSquare.transform = .identity
            }
        }
        if (num == 4) {
            UIView.animate(withDuration: 2, delay: 0, usingSpringWithDamping: 1, initialSpringVelocity: 0.3,options: .autoreverse, animations: {
                self.redSquare.alpha = 0
            }){ (isCompleted) in
                self.redSquare.alpha = 1
                
            }
        }
        if (num == 5) {
            if (animating){
                self.redSquare.layer.removeAnimation(forKey: "transform.rotation")
                animating = !animating
            }
            UIView.animate(withDuration: 2, delay: 0,options: .autoreverse, animations: {
                self.redSquare.transform = CGAffineTransform(scaleX: 2, y: 2)
            }){ (isCompleted) in
                self.redSquare.transform = CGAffineTransform(scaleX: 1, y: 1)
            }
        }
        if (num == 6) {
            animating = !animating
            rotateView(targetView: redSquare)
            self.redSquare.transform = .identity
        }
 }
    
    func rotateView(targetView: UIView){
        let animation = CABasicAnimation(keyPath: "transform.rotation")
        animation.toValue = Float.pi * 2
        animation.fromValue = 0
        animation.duration = 0.8
        animation.repeatCount = Float.infinity
        targetView.layer.add(animation, forKey: "transform.rotation")
    }
    
    
    @IBAction func previousButtonAction(_ sender: UIButton) {
        self.num += num == 0 ? 6 : -1
        numLabel.text = String(num + 1)
        animationIn()
    }
    @IBAction func nextButtonAction(_ sender: UIButton) {
        self.num = (num + 1) % 7
        numLabel.text = String(num + 1)
        animationIn()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        numLabel.text = "1"
    }
}

