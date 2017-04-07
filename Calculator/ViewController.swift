//
//  ViewController.swift
//  Calculator
//
//  Created by Trent Hand on 3/28/17.
//  Copyright © 2017 Trent Hand. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBAction func touchDigit(_ sender: UIButton) {
        let digit = sender.currentTitle!
        print("\(String(describing: digit)) was touched")
    }


}

