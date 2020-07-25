//
//  TipCalculator.swift
//  Tip Calculator
//
//  Created by Bunmi Oluwatudimu on 7/24/20.
//  Copyright © 2020 Bunmi Oluwatudimu. All rights reserved.
//

import Foundation

class TipCalculator{
    var bill: Double = 0.0
    var tipAmount: Double = 0.0
    var tipPercentage: Double = 0.0
    var totalAmount: Double = 0.0
    
    init(bill: Double, tipPercentage: Double) {
        self.bill = bill
        self.tipPercentage = tipPercentage
        
    }
    
    func calculateTip() {
        tipAmount = bill * tipPercentage
        totalAmount = tipAmount + bill
    }
}
