//
//  SonThirdViewController.swift
//  TabBarController
//
//  Created by Александр on 24.09.2020.
//  Copyright © 2020 Александр. All rights reserved.
//

import UIKit

protocol ThirdVeiwControllerDelegate{
    func setBackGroundColor(color: UIColor)
}

class SonThirdViewController: UIViewController {
    
    var delegate: ThirdVeiwControllerDelegate?
    
    @IBAction func changeColor(_ sender: UIButton) {
        switch sender.currentTitle!{
        case "Green": delegate?.setBackGroundColor(color: #colorLiteral(red: 0.4006757573, green: 1, blue: 0.4233740233, alpha: 1))
        case "Yellow": delegate?.setBackGroundColor(color: #colorLiteral(red: 0.93682408, green: 1, blue: 0.1213116636, alpha: 1))
        case "Purple": delegate?.setBackGroundColor(color: #colorLiteral(red: 1, green: 0.3956774471, blue: 0.9454358773, alpha: 1))
        default: break
        }
    }
}
