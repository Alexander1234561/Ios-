//
//  SecondViewController.swift
//  UIComponents
//
//  Created by Александр on 25.09.2020.
//  Copyright © 2020 Александр. All rights reserved.
//

import UIKit

struct Element{
    var image: UIImage
    var name: String
}

class SecondViewController: UIViewController {

    @IBOutlet var picturesimageViewCollection: [UIImageView]!
    @IBOutlet var nameLabelCollection: [UILabel]!
    
    var pictureMass: Array<Element> = [Element(image: UIImage(named: "hulk")!, name: "Hulk"), Element(image: UIImage(named: "joker")!, name: "Joker"), Element(image: UIImage(named: "cat")!, name: "Cat"), Element(image: UIImage(named: "rat")!, name: "Rat"), Element(image: UIImage(named: "monsters")!, name: "Monsters"), Element(image: UIImage(named: "albert")!, name: "Albert"), Element(image: UIImage(named: "bars")!, name: "Bars"), Element(image: UIImage(named: "simpson")!, name: "Simpson"), Element(image: UIImage(named: "tom")!, name: "Tom and Jerry"), Element(image: UIImage(named: "squirel")!, name: "Squirel")]
    
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        var coordinateX: Double = 10
        var coordinateY: Double = 10
        let elemCount: Int = 4
        let height: Double = (Double(UIScreen.main.bounds.size.height) / Double(elemCount) * 2) - 70
        let width: Double = (Double(UIScreen.main.bounds.size.width) / 2) - 20
        
        for i in 1...elemCount {
            
            let imageView: UIImageView = UIImageView(frame: CGRect(x: coordinateX, y: coordinateY, width: width, height: height))
            let label: UILabel = UILabel(frame: CGRect(x: coordinateX, y: coordinateY + height + 10, width: width, height: 15))
            imageView.image = pictureMass[i].image
            label.text = pictureMass[i].name
            label.textAlignment = .center
            self.view.addSubview(imageView)
            self.view.addSubview(label)
            
            if (i % 2 == 0 ) {
                coordinateY += (height + 40)
                coordinateX = 10
            }
            else {coordinateX += (width + 20)}
        }
    }
    
}
