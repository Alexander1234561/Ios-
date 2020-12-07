//
//  SecondViewController.swift
//  TabBarController
//
//  Created by Александр on 24.09.2020.
//  Copyright © 2020 Александр. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {

    @IBOutlet weak var colorLabel: UILabel!
    var color: String = "Зеленый"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        colorLabel.text = "Выбран \(self.color)"
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let vc = segue.destination as? SecondBroViewController, segue.identifier == "showSegue" {
            vc.color = self.color
            vc.delegate = self
        }
    }
}

extension SecondViewController: SecondViewControllerDelegate{
    func setColor(color: String) {
        colorLabel.text = "Выбран \(color) цвет, который только что выбрали"
        self.color = color
    }
}
