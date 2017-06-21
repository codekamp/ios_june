//
//  File.swift
//  ApiDemo
//
//  Created by Cerebro on 21/06/17.
//  Copyright © 2017 CodeKamp. All rights reserved.
//

import Foundation
import SwiftyJSON

class MailChimpList {
    
    var id:String
    var name:String
    var fromName:String
    var fromEmail:String
    
    
    init(listJson: JSON) {
        self.id = listJson["id"].string!
        self.name = listJson["name"].string!
        self.fromName = listJson["campaign_defaults"]["from_name"].string!
        self.fromEmail = listJson["campaign_defaults"]["from_email"].string!
    }
    
}
