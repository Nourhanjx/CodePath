//
//  ViewController.swift
//  Prework
//
//  Created by Nourhan on 22/03/2021.
//

import UIKit

class ViewController: UIViewController {


    @IBOutlet weak var billAmountTextField: UITextField!
    @IBOutlet weak var tipAmountLabel: UILabel!
    @IBOutlet weak var totalLbl: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    
    @IBAction func valueChanged(_ sender: UISegmentedControl) {
        
        guard let amount = self.billAmountTextField.text else {return}
        
        let bill = Double(amount)
        
        let tipPercentages = [0.15, 0.18, 0.2]
        
        let tip = tipPercentages[sender.selectedSegmentIndex] * (bill ?? 0.0)
        
        let total = (bill ?? 0.0) + tip
        
        self.totalLbl.text = "$\(String(format: "%.2f", total))"
        self.tipAmountLabel.text = String(format: "$%.2f", tip)
    }
}

