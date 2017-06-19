//
//  SecondViewController.swift
//  NSUserDefaultsDemo
//
//  Created by Cerebro on 19/06/17.
//  Copyright © 2017 CodeKamp. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {

    @IBOutlet weak var apiKeyLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        apiKeyLabel.text = UserDefaults.standard.string(forKey: "mailchimp_api_key")
    }
    
    @IBAction func removeApiKey(_ sender: UIButton) {
        UserDefaults.standard.removeObject(forKey: "mailchimp_api_key")
    }
    

}
