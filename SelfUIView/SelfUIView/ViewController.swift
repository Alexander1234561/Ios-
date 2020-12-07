//
//  ViewController.swift
//  SelfUIView
//
//  Created by Александр on 03.10.2020.
//  Copyright © 2020 Александр. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var segmentLabel: UILabel!
    @IBOutlet weak var sc: SegmentedControlMy!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        sc.delegate = self
    }
}
extension ViewController: SegmentedControlMyDelegate{
    func segmentChoose(_ segmentedControlMy: SegmentedControlMy) {
        segmentLabel.text = segmentedControlMy.firstSegment.backgroundColor == segmentedControlMy.activeColor ? segmentedControlMy.firstSegmentText.text : segmentedControlMy.secondSegmentText.text
    }
}
