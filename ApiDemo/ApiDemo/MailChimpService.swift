//
//  MailChimpService.swift
//  ApiDemo
//
//  Created by Cerebro on 21/06/17.
//  Copyright © 2017 CodeKamp. All rights reserved.
//

import Foundation
import Alamofire
import SwiftyJSON

class MailChimpService {

    class func getLists(completionHandler:@escaping ([MailChimpList]) -> Void) {
        
        let parameters:Parameters = ["apikey": "f1c784e3d0327a53856e29dc5e8afa3d-us11"]
        
        Alamofire.request("https://us11.api.mailchimp.com/3.0/lists", parameters: parameters).responseJSON { (response) in
            
            
            print(response.result.value)
            let totalResponse = JSON(response.result.value!)
            
            let lists = totalResponse["lists"].arrayValue
            
            
            var allLists:[MailChimpList] = []
            
            for list in lists {
                let mailchimpList = MailChimpList(listJson: list)
                
                allLists.append(mailchimpList)
            }
            
            
            NotificationCenter.default.post(name: NSNotification.Name("LIST_FETCHED"), object: nil)
            
            completionHandler(allLists)
            
        }
    }
    
    class func getMembers(listId:String, completionHandler:@escaping ([Member]) -> Void) {
        
        let parameters:Parameters = ["apikey": "4c10095cb9234e7915106c0612bceec7-us11"]
        
        Alamofire.request("https://us11.api.mailchimp.com/3.0/lists/\(listId)/members", parameters: parameters).responseJSON { (response) in
            
            
            let totalResponse = JSON(response.result.value!)
            
            let members = totalResponse["members"].arrayValue
            
            
            var allMembers:[Member] = []
            
            for memberJson in members {
                let member = Member(json: memberJson)
                
                allMembers.append(member)
            }
            
            completionHandler(allMembers)
            
        }
    }
    
    
}
