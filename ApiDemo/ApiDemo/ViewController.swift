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

class ViewController: UIViewController {
    
    var listNames:[String] = []
    


    override func viewDidLoad() {
        super.viewDidLoad()
        
        let data: Parameters = ["apikey": "7c08f64b6028ffdc25f95cfc0c52d3e1-us11"]
        
        Alamofire.request("https://us11.api.mailchimp.com/3.0/lists", method:.get, parameters:data).responseJSON { response in
            
            
            let json = JSON(response.result.value)
            
            let itemCount = json["total_items"].intValue
            
            print ("total items are \(itemCount)")
        
            
            let lists = json["lists"].arrayValue
            
            for list in lists {
                self.listNames.append(list["name"].string!)
            }
            
            //reload tableview here
        }
        
        
        print("hello world!")
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

