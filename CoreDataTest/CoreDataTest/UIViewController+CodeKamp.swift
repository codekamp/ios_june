//
//  UIViewController+CodeKamp.swift
//  CoreDataTest
//
//  Created by Cerebro on 28/06/17.
//  Copyright © 2017 CodeKamp. All rights reserved.
//

import Foundation
import UIKit

extension UIViewController {
    
    func instentiateVC(withIdentifier identifier:String, storyboardName:String = "Main") -> UIViewController {
        let storyboard = UIStoryboard(name: storyboardName, bundle: nil)
        return storyboard.instantiateViewController(withIdentifier: identifier)
    }
    
}
