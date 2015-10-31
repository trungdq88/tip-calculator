//
//  ViewController.swift
//  tips
//
//  Created by Dinh Quang Trung on 10/31/15.
//  Copyright © 2015 HAC. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var billField: UITextField!
    @IBOutlet var tipLabel: UILabel!
    @IBOutlet var totalLabel: UILabel!
    @IBOutlet var tipSegment: UISegmentedControl!
    
    let tipPercentages = [0.18, 0.2, 0.22]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        tipLabel.text = "$0.00"
        totalLabel.text = "$0.00"
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func calcTips() {
        let billAmount = Double(billField.text!)
        if (billAmount != nil) {
            let tip = billAmount! * tipPercentages[tipSegment.selectedSegmentIndex]
            let total = billAmount! + tip;
            tipLabel.text = String(format: "$%.2f", tip)
            totalLabel.text = String(format: "$%.2f", total)
        } else {
            tipLabel.text = "$0.00"
            totalLabel.text = "$0.00"
        }
    }

    @IBAction func onTap(sender: AnyObject) {
        view.endEditing(true)
    }
}

