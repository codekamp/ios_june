//
//  ResultViewController.swift
//  MultiscreenDemo
//
//  Created by Cerebro on 07/06/17.
//  Copyright © 2017 CodeKamp. All rights reserved.
//

import UIKit

class ResultViewController: UIViewController {
    
    var result:Int?

    @IBOutlet weak var resultLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if(result != nil) {
            resultLabel.text = "Your answer is \(result!)"
        }
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
