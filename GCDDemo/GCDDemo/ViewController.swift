//
//  ViewController.swift
//  GCDDemo
//
//  Created by Cerebro on 05/07/17.
//  Copyright © 2017 CodeKamp. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        DispatchQueue.global(qos: .userInteractive).sync {
            print("this will run on a seperate queue")
        }
        
        print("video did load completed")
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }


}

