//
//  ListViewController.swift
//  TabDemo
//
//  Created by Cerebro on 23/06/17.
//  Copyright © 2017 CodeKamp. All rights reserved.
//

import UIKit

class ListViewController: UIViewController {
    
    var index = 0;

    @IBOutlet weak var label: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        label.text = "this is screen number \(index)"
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
