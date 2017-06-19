//
//  ViewController.swift
//  NSUserDefaultsDemo
//
//  Created by Cerebro on 19/06/17.
//  Copyright © 2017 CodeKamp. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var apiKeyField: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        let apiKey = UserDefaults.standard.string(forKey: "mailchimp_api_key")
        
        if let key = apiKey {
            apiKeyField.text = key
        } else {
            print("api key not stored")
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func saveApiKey(_ sender: UIButton) {
        // fetch some data from mailchimp to confirm that API key is valid.
        
        UserDefaults.standard.set(apiKeyField.text!, forKey: "mailchimp_api_key")
    }
    
    
    // GET https://api.invidz.com/auth/login
    // parameters email, password
    
    
// email -    101.prashant@gmail.com
// passsword - rajneesh
    
    
    // GET https://api.invidz.com/projects
    // Authorization -  bearer THE_ACCESS_TOKEN
    
//    let headers: HTTPHeaders = [
//        "Authorization": "bearer " + accessToken
//    ]

}

