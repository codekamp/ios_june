//
//  ResultViewController.swift
//  TableVeiwReload
//
//  Created by Cerebro on 12/06/17.
//  Copyright © 2017 CodeKamp. All rights reserved.
//

import UIKit

class ResultViewController: UIViewController {

    @IBOutlet weak var resultLabel: UILabel!
    
    var result: Int!
    
    var delegate:CityPickerDelegate?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        resultLabel.text = "Result is \(result)"
    }

    @IBAction func selectCity(_ sender: UIButton) {
        
        let city = sender.currentTitle!
        
        
        delegate?.onCitySelected(cityname: city)
        
        dismiss(animated: true, completion: nil)
    }
    
    
    
}


protocol CityPickerDelegate {
    func onCitySelected(cityname: String)
}
