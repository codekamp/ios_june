//
//  ViewController.swift
//  ApiDemo
//
//  Created by Cerebro on 15/06/17.
//  Copyright © 2017 CodeKamp. All rights reserved.
//

import UIKit

import Alamofire
import SwiftyJSON

class ViewController: UIViewController, UITableViewDataSource {
    
    
    var handleListFetch:(([MailChimpList]) -> Void)?
    
    
    @IBOutlet weak var tableView: UITableView!
    
    var lists:[MailChimpList] = [] {
        
        didSet {
            self.tableView.reloadData()
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.dataSource = self
        
        handleListFetch = {
            [weak self]
            (lists) in
            
            self?.lists = lists
        }
        
        MailChimpService.getLists(completionHandler: handleListFetch!)
        
        NotificationCenter.default.addObserver(self, selector: #selector(onListFetched), name: NSNotification.Name("LIST_FETCHED"), object: nil)
        
        NotificationCenter.default.removeObserver(self)
        
        
        let s = UIStoryboard(name: "Main", bundle: nil)
        
        let vc = s.instantiateViewController(withIdentifier: "something")
        
        present(vc, animated: true, completion: nil)
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return lists.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let list = lists[indexPath.row]
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "codekamp_cell")!
        
        cell.textLabel?.text = list.name
        
        return cell
    }
    
    func onListFetched() {
        print("onListFetched call hua")
    }
}

