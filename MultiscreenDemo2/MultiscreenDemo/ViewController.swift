//
//  ViewController.swift
//  MultiscreenDemo
//
//  Created by Cerebro on 07/06/17.
//  Copyright © 2017 CodeKamp. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBOutlet weak var firstNumField: UITextField!
    
    @IBOutlet weak var secondNumField: UITextField!
    
    
    @IBAction func add() {
        let result = Int(firstNumField.text!)! + Int(secondNumField.text!)!
        
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        
        let vc = storyboard.instantiateViewController(withIdentifier: "result_vc") as! ResultViewController
        
        vc.result = result
        
        if navigationController != nil {
            navigationController!.pushViewController(vc, animated: true)
        } else {
            present(vc, animated: true, completion: nil)
        }
    }
    
}

