//
//  ViewController.swift
//  Tip Calculator
//
//  Created by Bunmi Oluwatudimu on 7/22/20.
//  Copyright © 2020 Bunmi Oluwatudimu. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var billTextField: UITextField!
    @IBOutlet weak var tipLabel:
        UILabel!
    @IBOutlet weak var tipSlider: UISlider!
    @IBOutlet weak var splitLabel: UILabel!
    @IBOutlet weak var splitSlider: UISlider!
    @IBOutlet weak var billTotalLabel: UILabel!
    @IBOutlet weak var perPersonLabel: UILabel!
    
    var tipCalculator = TipCalculator(bill:0, tipPercentage: 0.15)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        billTextField.becomeFirstResponder()
    }
    
    func calculateBill(){
        tipCalculator.tipPercentage = Double(tipSlider.value)/100
        
        tipCalculator.bill = (billTextField.text! as NSString).doubleValue
        
        tipCalculator.calculateTip()
        updateUI()
    }
    
    func updateUI(){
        billTotalLabel.text = String(format: "$%0.2f", tipCalculator.totalAmount)
        
        let perPerson: Int = Int(splitSlider.value)
        
        perPersonLabel.text = String(format: "$%0.2f", tipCalculator.totalAmount / Double(perPerson))
    }
    
    @IBAction func tipSlider(sender: Any){
        tipLabel.text = String(format: "Tip: %02d%%", Int(tipSlider.value))
        calculateBill()
    }

    @IBAction func splitSlider(sender: Any){
        splitLabel.text = String(format: "Split: %2d%", Int(splitSlider.value))
        calculateBill()
    }
    
    @IBAction func billTextField(sender: Any){
           calculateBill()
       }
}

