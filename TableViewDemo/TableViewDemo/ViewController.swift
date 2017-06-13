//
//  ViewController.swift
//  TableViewDemo
//
//  Created by Cerebro on 09/06/17.
//  Copyright © 2017 CodeKamp. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {


    @IBOutlet weak var myTableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        myTableView.dataSource = self
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 30;
    }
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "my_cell_identifier") as! FriendProfileCell
        
        cell.nameLabel.text = "friend \(indexPath.row)"
        
        let remainder = indexPath.row % 3
        
        if remainder == 0 {
            cell.profileImageView.image = UIImage(named: "Ubuntu")
        } else if remainder == 1 {
            cell.profileImageView.image = UIImage(named: "Windows")
        } else {
            cell.profileImageView.image = UIImage(named: "Mac")
        }
        
        return cell
    }

}
