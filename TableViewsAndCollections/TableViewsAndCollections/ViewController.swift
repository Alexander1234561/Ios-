//
//  ViewController.swift
//  TableViewsAndCollections
//
//  Created by Александр on 30.09.2020.
//  Copyright © 2020 Александр. All rights reserved.
//

import UIKit

struct Icon{
    var name: Array<String>
    let image: UIImage = UIImage(named: "bars")!
}

class SettingsFabric {
    static func settings() -> [Icon] {
        return [ Icon(name: ["Авиарежим", "WI-FI", "Bluetooth", "Сотовая связь", "Режим модема"]),
                 Icon(name: ["Уведомления", "Звуки, тактильные сигналы", "Не беспокоить", "Экранное время"]),
                 Icon(name: ["Основные", "Пункт управления"])
        ]
    }
}


class ViewController: UIViewController {
    
    var setting = SettingsFabric.settings()
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
}

extension ViewController: UITableViewDataSource, UITableViewDelegate {
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return setting.count
    }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return "1"
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return setting[section].name.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell") as! SFirstTableViewCell
        cell.imageIcon.image = setting[indexPath.section].image
        cell.nameLabel.text = setting[indexPath.section].name[indexPath.row]
        return cell
    }
}
