//
//  ViewController.swift
//  Tip Calculator
//
//  Created by Dru Grossberg on 10/9/19.
//  Copyright © 2019 Dru Grossberg. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

//
//  ViewController.swift
//  Tip Calculator
//
//  Created by Dru Grossberg on 10/9/19.
//  Copyright © 2019 Dru Grossberg. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var billField:
    UITextField!
    
    
    @IBOutlet weak var tipLabel:
    UILabel!
    
    
    @IBOutlet weak var totalLabel:
    UILabel!
    
    @IBOutlet weak var tipControl: UISegmentedControl!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    @IBOutlet weak var tipCalculator: UINavigationItem!
    
  
    @IBAction func onTap(_ sender: Any) {
        print("Hello")
        
        view.endEditing(true)
    }
    
    
    @IBAction func calculateTip(_ sender: Any) {
        
        // Get the bill amount
        let bill = Double(billField.text!) ?? 0
        
        // Calculate the tip and total
        let tipPercentages = [0.15, 0.18, 0.2]
        
        let tip = bill * tipPercentages[tipControl.selectedSegmentIndex]
        let total = bill + tip
        
        // Update the tip and total labels
        tipLabel.text = String(format: "$%.2f", tip)
        totalLabel.text = String(format: "$%.2f", total)
    }
}

