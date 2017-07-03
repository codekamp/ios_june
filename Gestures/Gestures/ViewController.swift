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
        
        
        
        let rv = MyRatingView(rating: 58)
        
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
        
//        UIView.animate(withDuration: 10.0, delay: 0.0, options: [UIViewAnimationOptions.curveLinear, UIViewAnimationOptions.beginFromCurrentState], animations: {
//            [weak self]
//            () in
//            self?.redBox.backgroundColor = UIColor.green
//        }) {
//            (xyz) in
//            print(xyz)
//        }
//        
//        UIView.animate(withDuration: 3.0, delay: 0.0, options: [UIViewAnimationOptions.curveLinear,  UIViewAnimationOptions.beginFromCurrentState], animations: {
//            self.redBox.backgroundColor = UIColor.yellow
//        }) { (xyz) in
//            print(xyz)
//        }
        
        
//        https://developer.apple.com/library/content/documentation/WindowsViews/Conceptual/ViewPG_iPhoneOS/AnimatingViews/AnimatingViews.html
        
//        http://uicolor.xyz/
        
//        http://easings.net/
        
        
        let label = UILabel(frame: CGRect(x: 0, y: 200, width: 200, height: 40))
        label.text = "Hello world!"
        
        print(self.view.subviews.index(of: self.redBox) ?? -1)
        
        UIView.transition(from: self.redBox, to: label, duration: 3.0, options: [UIViewAnimationOptions.curveLinear]) {
            (complete) in
            print(self.view.subviews.index(of: self.redBox) ?? -1)
        }
    
        
        
        print("I am here")
        
        // https://developer.apple.com/library/content/referencelibrary/GettingStarted/DevelopiOSAppsSwift/ImplementingACustomControl.html
        
        // https://developer.apple.com/library/content/documentation/Swift/Conceptual/Swift_Programming_Language/Initialization.html#//apple_ref/doc/uid/TP40014097-CH18-ID203
    }
}

