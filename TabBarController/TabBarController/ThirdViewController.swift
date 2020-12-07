//
//  ThirdViewController.swift
//  TabBarController
//
//  Created by Александр on 24.09.2020.
//  Copyright © 2020 Александр. All rights reserved.
//

import UIKit

class ThirdViewController: UIViewController {

    private var sonVC: SonThirdViewController?
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let vc = segue.destination as? SonThirdViewController, segue.identifier == "EmbedSegue"{
            sonVC = vc
            vc.delegate = self
        }
    }
    @IBAction func changeColor(_ sender: UIButton) {
        switch sender.currentTitle!{
        case "Green": sonVC?.view.backgroundColor = #colorLiteral(red: 0.4006757573, green: 1, blue: 0.4233740233, alpha: 1)
        case "Yellow": sonVC?.view.backgroundColor = #colorLiteral(red: 0.93682408, green: 1, blue: 0.1213116636, alpha: 1)
        case "Purple": sonVC?.view.backgroundColor = #colorLiteral(red: 1, green: 0.3956774471, blue: 0.9454358773, alpha: 1)
        default: break
        }
    }
}
extension ThirdViewController: ThirdVeiwControllerDelegate{
    func setBackGroundColor(color: UIColor) {
        self.view.backgroundColor = color
    }
}
