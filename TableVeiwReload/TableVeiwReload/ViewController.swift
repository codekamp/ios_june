//
//  ViewController.swift
//  TableVeiwReload
//
//  Created by Cerebro on 12/06/17.
//  Copyright © 2017 CodeKamp. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate, CityPickerDelegate {
    
    var kiskaTable = 10
    var kahanTak = 35

    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        myTableView.dataSource = self
        myTableView.delegate = self
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBOutlet weak var myTableView: UITableView!
    
    @IBOutlet weak var kiskaTableField: UITextField!
    
    @IBOutlet weak var kahanTakField: UITextField!

    @IBAction func showTableClicked(_ sender: UIButton) {
        kiskaTable = Int(kiskaTableField.text!)!
        kahanTak = Int(kahanTakField.text!)!
        
        myTableView.reloadData()
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return kahanTak;
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "codekamp_cell")!
        
        let multiplier = indexPath.row + 1
        let result = kiskaTable * multiplier
        
        cell.textLabel?.text = "\(kiskaTable) x \(multiplier) = \(result)"
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let rvc = storyboard.instantiateViewController(withIdentifier: "result_vc") as! ResultViewController
        rvc.result = kiskaTable * (indexPath.row + 1)
        
        rvc.delegate = self
        
        present(rvc, animated: false, completion: nil)
    }
    
    func onCitySelected(cityname: String) {
        print("city \(cityname) received successful")
    }

}

