//
//  FriendProfileCell.swift
//  TableViewDemo
//
//  Created by Cerebro on 13/06/17.
//  Copyright © 2017 CodeKamp. All rights reserved.
//

import UIKit

class FriendProfileCell: UITableViewCell {

    @IBOutlet weak var nameLabel: UILabel!
    
    @IBOutlet weak var profileImageView: UIImageView!
    
    override func awakeFromNib() {
    
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
