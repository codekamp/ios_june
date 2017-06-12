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
        myTableView.delegate = self
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 150;
    }
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "my_cell_identifier")!
        
        cell.textLabel?.text = "\(101 + indexPath.row)"
        
        print("called for row \(indexPath.row)")
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print("cell clicked: \(indexPath.row)")
        
        let cell = tableView.cellForRow(at: indexPath)
        
        cell?.backgroundColor = UIColor.cyan
        cell?.isSelected = false
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}
