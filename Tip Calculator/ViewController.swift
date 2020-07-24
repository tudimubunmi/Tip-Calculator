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
    
    override func viewDidLoad() {
        super.viewDidLoad()
        billTextField.becomeFirstResponder()
        
    }
    
    @IBAction func billTextField(sender: Any){
        
    }

}

