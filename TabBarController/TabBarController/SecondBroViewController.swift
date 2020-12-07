//
//  SecondBroViewController.swift
//  TabBarController
//
//  Created by Александр on 24.09.2020.
//  Copyright © 2020 Александр. All rights reserved.
//

import UIKit

protocol SecondViewControllerDelegate{
    func setColor(color: String)
}

class SecondBroViewController: UIViewController {
    
    @IBOutlet weak var colorLabel: UILabel!
    var color: String?
    var delegate: SecondViewControllerDelegate?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        colorLabel.text = "Выбран \(color!)"
    }
    
    @IBAction func changeColor(_ sender: UIButton) {
        switch sender.currentTitle!{
        case "Выбрать зеленый": delegate?.setColor(color: "зеленый")
        case "Выбрать синий": delegate?.setColor(color: "синий")
        case "Выбрать красный": delegate?.setColor(color: "красный")
        default: break
        }
        dismiss(animated: true, completion: nil)
    }
}
