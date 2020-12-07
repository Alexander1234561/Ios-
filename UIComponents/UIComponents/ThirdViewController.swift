//
//  ThirdViewController.swift
//  UIComponents
//
//  Created by Александр on 25.09.2020.
//  Copyright © 2020 Александр. All rights reserved.
//

import UIKit

class ThirdViewController: UIViewController {

    @IBOutlet weak var firstView: UIView!
    @IBOutlet weak var secnondView: UIView!
    @IBOutlet weak var thirdView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        firstView.frame = CGRect(x: 67, y: 106, width: 240, height: 128)
        secnondView.frame = CGRect(x: 67, y: 106, width: 240, height: 128)
        thirdView.frame = CGRect(x: 67, y: 106, width: 240, height: 128)
        secnondView.isHidden = true
        thirdView.isHidden = true
    }
    
    @IBAction func segmentAction(_ sender: UISegmentedControl) {
        switch sender.selectedSegmentIndex
        {
        case 0:
            firstView.isHidden = false
            secnondView.isHidden = true
            thirdView.isHidden = true
        case 1:
            firstView.isHidden = true
            secnondView.isHidden = false
            thirdView.isHidden = true
        case 2:
            firstView.isHidden = true
            secnondView.isHidden = true
            thirdView.isHidden = false
        default: break
        }
    }
}
