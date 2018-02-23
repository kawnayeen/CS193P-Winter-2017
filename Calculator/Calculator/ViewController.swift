//
//  ViewController.swift
//  Calculator
//
//  Created by kamarul kawnayeen on 2/16/18.
//  Copyright © 2018 kamarul kawnayeen. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var display: UILabel!
    
    @IBAction func touchDigit(_ sender: UIButton) {
        let digit = sender.currentTitle!
        let textCurrentlyInDisplay = display.text!
        display.text = textCurrentlyInDisplay + digit
    }
}
