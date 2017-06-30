//
//  ViewController.swift
//  Gestures
//
//  Created by Cerebro on 29/06/17.
//  Copyright © 2017 CodeKamp. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var redBox: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        
        let date  = Date()
        
//        let timestamp = date.timeIntervalSince1970
        
        let formatter = DateFormatter()
        formatter.dateFormat = "dd MMMM yyyy"
        
        let result  = formatter.string(from: date)
        
        print(result)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func onPinch(_ sender: UIPinchGestureRecognizer) {
        print(sender.scale)
        
        sender.scale = 1
    }

    @IBAction func changeColor(_ sender: Any) {
        
        UIView.animate(withDuration: 10.0, delay: 0.0, options: [UIViewAnimationOptions.curveLinear, UIViewAnimationOptions.beginFromCurrentState], animations: {
            [weak self]
            () in
            self?.redBox.backgroundColor = UIColor.green
        }) {
            (xyz) in
            print(xyz)
        }
        
        UIView.animate(withDuration: 3.0, delay: 0.0, options: [UIViewAnimationOptions.curveLinear,  UIViewAnimationOptions.beginFromCurrentState], animations: {
            self.redBox.backgroundColor = UIColor.yellow
        }) { (xyz) in
            print(xyz)
        }
        
        
//        https://developer.apple.com/library/content/documentation/WindowsViews/Conceptual/ViewPG_iPhoneOS/AnimatingViews/AnimatingViews.html
        
//        http://uicolor.xyz/
        
//        http://easings.net/
        
        
        print("I am here")
    }
}

