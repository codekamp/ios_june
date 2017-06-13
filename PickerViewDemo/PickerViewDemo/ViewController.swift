//
//  ViewController.swift
//  PickerViewDemo
//
//  Created by Cerebro on 13/06/17.
//  Copyright © 2017 CodeKamp. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate {

    @IBOutlet weak var myPickerView: UIPickerView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        myPickerView.dataSource = self
        myPickerView.delegate = self
        
        myPickerView.selectRow(<#T##row: Int##Int#>, inComponent: <#T##Int#>, animated: <#T##Bool#>)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 3;
    }
    
    @IBAction func setAlarm(_ sender: UIButton) {
        
        let hour = myPickerView.selectedRow(inComponent: 0) + 1
        let minute = myPickerView.selectedRow(inComponent: 1)
        let meridian = myPickerView.selectedRow(inComponent: 2) == 0 ? "AM" : "PM"
        
        print("hour: \(hour)")
        print("minute: \(minute)")
        print("meridian: " + meridian)
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        
        switch component {
        case 0:
            return 12
        case 1:
            return 60
        default:
            return 2
        }
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        
        if component == 2 {
            return row == 0 ? "AM" : "PM"
        } else if component == 1 {
            return "\(row)"
        }
        
        return "\(row + 1)"
        
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        print("row: \(row) in component \(component)")
    }
    
    


}

