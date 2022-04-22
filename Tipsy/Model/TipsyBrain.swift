//
//  TipsyBrain.swift
//  Tipsy
//
//  Created by Nyade on 22/04/22.
//  Copyright © 2022 The App Brewery. All rights reserved.
//

import UIKit

struct TipsyBrain {
    
    var tip = 0.0
    var tipPercentage = ""
    var numberOfPeople = 0
    var billAmount = 0.0
    var billTotal = ""
    
    mutating func formatStringToDouble() {
        let buttonTitleMinusPercentSign = String(tipPercentage.dropLast())
        let buttonTitleAsANumber = Double(buttonTitleMinusPercentSign)!
        tip = buttonTitleAsANumber / 100
    }
    
    mutating func calculateTip(bill: String) {
        if bill != "" {
            billAmount = Double(bill)!
            billTotal = String(format: "%.2f", billAmount * (1 + tip) / Double(numberOfPeople))
        }
    }
}
