//
//  File.swift
//  Gestures
//
//  Created by Cerebro on 03/07/17.
//  Copyright © 2017 CodeKamp. All rights reserved.
//

import Foundation

class Student {
    
    let name:String
    var age:Int
    
    required init(name:String) {
        self.name = name
        self.age = 0
    }
    
    init(age:Int) {
        self.name = "Unknown"
        self.age = age
    }
    
    convenience init() {
        self.init(name: "unknown")
        self.age = 30
    }
}
