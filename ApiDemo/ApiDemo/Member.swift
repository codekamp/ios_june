//
//  File.swift
//  ApiDemo
//
//  Created by Cerebro on 21/06/17.
//  Copyright © 2017 CodeKamp. All rights reserved.
//

import Foundation
import SwiftyJSON

class Member {
    
    var id:String
    var name:String
    var email:String
    
    
    init(json: JSON) {
        self.id = json["id"].string!
        self.name = json["merge_fields"]["FNAME"].string! + " " + json["merge_fields"]["FNAME"].string!
        
        self.email = json["email_address"].string!
    }
    
}
