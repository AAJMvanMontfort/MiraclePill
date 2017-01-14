//
//  ViewController.swift
//  MiraclePill
//
//  Created by AAJM van Montfort on 10-01-17.
//  Copyright © 2017 AAJM van Montfort. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate {

    @IBOutlet weak var statePickerBtn: UIButton!
    @IBOutlet weak var statePicker: UIPickerView!
    @IBOutlet weak var successBtn: UIImageView!
  
    let states = ["Friesland", "Groningen", "Drente", "Overijssel", "Gelderland", "Flevoland", "Utrecht", "Noord-Holland", "Zuid-Holland", "Zeeland", "Noord-Brabant", "Limburg"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        statePicker.dataSource = self
        statePicker.delegate = self
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func statePickerBtnPressed(_ sender: Any) {
        statePicker.isHidden = false
    }

    @IBAction func buyNowBtnPressed(_ sender: Any) {
        successBtn.isHidden = false
    }
    
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return states.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return states[row]
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        
        statePickerBtn.setTitle(states[row], for: UIControlState.normal)
        statePicker.isHidden = true
        
    }
}

