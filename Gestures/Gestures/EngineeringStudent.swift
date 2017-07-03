//
//  EngineeringStudent.swift
//  Gestures
//
//  Created by Cerebro on 03/07/17.
//  Copyright © 2017 CodeKamp. All rights reserved.
//

import Foundation

class EngineeringStudent: Student {
    
    let department:String
    
    init(department: String) {
        self.department = department
        
        super.init(age: 10)
    }
    
    required init(name: String) {
        self.department = "something"
        super.init(age: 30)
    }
    
}
