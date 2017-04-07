//
//  ViewController.swift
//  Calculator
//
//  Created by Trent Hand on 3/28/17.
//  Copyright © 2017 Trent Hand. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var display: UILabel!
    
    var userIsInTheMiddleOfTyping = false
    
    @IBAction func touchDigit(_ sender: UIButton) {
        let digit = sender.currentTitle!
        if userIsInTheMiddleOfTyping{
            let textCurrentlyInDisplay = display.text!
            display.text = textCurrentlyInDisplay + digit
        } else {
            display.text = digit
            userIsInTheMiddleOfTyping = true
        }
    }
    
    //convert all the values from strings to doubles and back
    var displayValue: Double{
        get{
            return Double(display.text!)!
        }
        set {
            //newValue is a special var built into Swift
            display.text = String(newValue)
        }
    }
    
    
    @IBAction func performOperation(_ sender: UIButton) {
        userIsInTheMiddleOfTyping = false
        if let mathmaticalSymbol = sender.currentTitle {
            switch mathmaticalSymbol {
            case "π":
                //creates the pi number when clicked
                displayValue = Double.pi
            case "√":
                //converts current number into square root
                displayValue = sqrt(displayValue)
            default:
                break
            }
        }
    }
    
}

