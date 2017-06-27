//
//  MembersViewController.swift
//  ApiDemo
//
//  Created by Cerebro on 27/06/17.
//  Copyright © 2017 CodeKamp. All rights reserved.
//

import UIKit

class MembersViewController: UIViewController {
    
    @IBOutlet weak var listLabel: UILabel!
    
    var listId = ""

    override func viewDidLoad() {
        super.viewDidLoad()
        
        listLabel.text = listId
    }

}
