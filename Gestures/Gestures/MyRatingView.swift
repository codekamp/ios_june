//
//  MyRatingView.swift
//  Gestures
//
//  Created by Cerebro on 03/07/17.
//  Copyright © 2017 CodeKamp. All rights reserved.
//

import UIKit

class MyRatingView: UIView {
    
    let rating:Int
    
    init(rating:Int) {
        self.rating = rating
    
        super.init(frame: CGRect(x: 10, y: 10, width: 100, height: 200))
    }
    
    required init?(coder aDecoder: NSCoder) {
        self.rating = 5
        super.init(coder: aDecoder)
    }
    
    

}
