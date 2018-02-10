//
//  WelcomeTableViewCell.swift
//  TestViper
//
//  Created by william on 3/15/17.
//  Copyright © 2017 PT. Kurio. All rights reserved.
//

import UIKit

class WelcomeTableViewCell: UITableViewCell {
    
    @IBOutlet weak var imageViewCell: UIImageView?
    

    @IBOutlet weak var descriptionLabel: UILabel?
    

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
