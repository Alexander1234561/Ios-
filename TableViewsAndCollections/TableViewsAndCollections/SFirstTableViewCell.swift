//
//  SFirstTableViewCell.swift
//  TableViewsAndCollections
//
//  Created by Александр on 01.10.2020.
//  Copyright © 2020 Александр. All rights reserved.
//

import UIKit

class SFirstTableViewCell: UITableViewCell {
    
    @IBOutlet weak var imageIcon: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
