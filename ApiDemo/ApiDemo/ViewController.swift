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
    var listIds:[String] = []
    
    var b = 0;
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        let headers:HTTPHeaders = ["Authorization": "bearer 4c10095cb9234e7915106c0612bceec7-us11"];
        
        let data:Parameters = ["email_address": "amit@gmail.com", "status":"subscribed"]
        
        Alamofire.request("https://us11.api.mailchimp.com/3.0/lists/085c2bcf83/members", method:.post, parameters:data,encoding:JSONEncoding.default, headers: headers).responseJSON { (data) in
            
            print(data.result.value)
        }
        
    }
    
    
    func someFunc(a: Int) {
        
        b = a + 1
        
        print("value of b is \(b)")
        
        let myRequest = Alamofire.request("https://us11.api.mailchimp.com/3.0/lists")
        
        myRequest.responseJSON(completionHandler: {
            response in
            
            
        })
        
        print("hello world")
        
        Alamofire.request("https://us11.api.mailchimp.com/3.0/lists").responseJSON {
            response in
            
            
        }
    }
    
    
    func handleResponse(response:DataResponse<Any>) {
        print("Value of b in function \(b)")
        
        
        //        dismiss(animated: true, completion: nil)
        //        navigationController?.popViewController(animated: true)
        
        if let nc = navigationController {
            nc.popViewController(animated: true)
        } else {
            dismiss(animated: true, completion: nil)
        }
        
        if navigationController != nil {
            navigationController!.popViewController(animated: true)
        } else {
            dismiss(animated: true, completion: nil)
        }
    }
    
    func something(firstNum:Int, callback:(String) -> Void) -> Bool {
        
        
        return true
    }
}

