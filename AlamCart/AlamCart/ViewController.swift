//
//  ViewController.swift
//  AlamCart
//
//  Created by Александр on 08.10.2020.
//  Copyright © 2020 Александр. All rights reserved.
//

import UIKit
import Alamofire

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        Alamofire.request("https://api.openweathermap.org/data/2.5/onecall?lat=55.7522&lon=37.6156&exclude=hourly,minutly,current,alerts&units=metric&appid=709c6ede6fe687c28778dfe8a5fb981f").responseJSON{ response in
            if let objects = response.result.value,
                let jsonDict = objects as? NSDictionary{
                print(jsonDict)}}
    }


}

