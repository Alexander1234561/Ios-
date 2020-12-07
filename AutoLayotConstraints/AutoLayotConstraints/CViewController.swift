//
//  CViewController.swift
//  AutoLayotConstraints
//
//  Created by Александр on 27.09.2020.
//  Copyright © 2020 Александр. All rights reserved.
//

import UIKit

class CViewController: UIViewController {

    @IBOutlet weak var heightCostrait: NSLayoutConstraint!
    @IBOutlet weak var textLabel: UILabel!
    
    @IBAction func showTextAction(_ sender: UIButton) {
        if (heightCostrait.constant == 0) {
            textLabel.numberOfLines = 1
            heightCostrait.constant = 20
            
        }
        else if (heightCostrait.constant == 20) {
            textLabel.numberOfLines = 5
            heightCostrait.constant = 100
        }
        else {
            heightCostrait.constant = 0
        }
        view.layoutIfNeeded()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
}
