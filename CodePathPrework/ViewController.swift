//
//  ViewController.swift
//  CodePathPrework
//
//  Created by Anjita Bhandari on 1/29/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var BillAmountTextField: UITextField!
    @IBOutlet weak var TipAmount: UILabel!
    @IBOutlet weak var TipControl: UISegmentedControl!
    @IBOutlet weak var TotalLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func TipControl(_ sender: Any) {
        let bill = Double(BillAmountTextField.text!) ?? 0
        
        //get total tip
        let tipPercentages = [0.15, 0.18, 0.2]
        let tip = bill *
                  tipPercentages[TipControl.selectedSegmentIndex]
        let total = bill + tip
        
        //update tip Amount Label
        TipAmount.text = String(format: "$%.2f", tip)
        //update Total Amount
        TotalLabel.text = String(format: "$%.2f", total)
    }
    
}

