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
        
        
        
        
        someFunc(a: 10)
        someFunc(a: 20)
        
        something(firstNum: 10, callback: {
            data in
            
            print(data)
        })
        
        something(firstNum: 10) {
            data in
            
            print(data)
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

