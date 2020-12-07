//
//  FirstViewController.swift
//  UIComponents
//
//  Created by Александр on 25.09.2020.
//  Copyright © 2020 Александр. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController {

    @IBOutlet weak var gallareimageView: UIImageView!
    var currentValue: Int = 0
    
    var imageMass: Array<UIImage> = [UIImage(named: "hulk")!, UIImage(named: "joker")!, UIImage(named: "cat")!,UIImage(named: "albert")!, UIImage(named: "bars")!, UIImage(named: "monsters")!, UIImage(named: "rat")!,UIImage(named: "simpson")!,UIImage(named: "squirel")!, UIImage(named: "tom")!]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        gallareimageView.image = imageMass[0]
    }
    @IBAction func backAction(_ sender: UIButton) {
        currentValue -= 1
        if currentValue < 0 { currentValue += imageMass.count }
        gallareimageView.image = imageMass[currentValue]
    }
    @IBAction func forwardAction(_ sender: UIButton) {
        currentValue += 1
        if currentValue > (imageMass.count - 1) { currentValue -= imageMass.count }
        gallareimageView.image = imageMass[currentValue]
    }
}
