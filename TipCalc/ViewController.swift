//
//  ViewController.swift
//  TipCalc
//
//  Created by Joe Halpin on 12/29/15.
//  Copyright © 2015 Joe Halpin. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var billField: UITextField!
    
    @IBOutlet weak var tipLabel: UILabel!
    
    @IBOutlet weak var totalLabel: UILabel!
    
    @IBOutlet weak var tipControl: UISegmentedControl!
    
    @IBOutlet weak var tipSplitTwo: UILabel!
    
    @IBOutlet weak var tipSplitThree: UILabel!
    
    @IBOutlet weak var tipSplitFour: UILabel!
    
    
    override func viewDidLoad() {
        
        // Set the titpe in the Navigation bar
        self.title = "TipCalc"
        
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        [billField .becomeFirstResponder()]
        
        tipLabel.text = "$0.00"
        totalLabel.text = "$0.00"
    
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
   override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(animated)
        print("view will appear")
        
        let defaults = NSUserDefaults.standardUserDefaults()
        let tipPercentage = defaults.doubleForKey("default_tip_percentage_control")
        
    }

    @IBAction func onEditingChanged(sender: AnyObject) {
        var tipPercentages = [0.18, 0.2, 0.22]
        var tipPercentage = tipPercentages[tipControl.selectedSegmentIndex]
        
        var billAmount = NSString(string: billField.text!).doubleValue
        var tip = billAmount * tipPercentage
        var total = billAmount + tip
        var two = total/2
        var three = total/3
        var four = total/4
        
        tipLabel.text = "$\(tip)"
        totalLabel.text = "$\(total)"
        tipSplitTwo.text = "$\(two)"
        tipSplitThree.text = "$\(three)"
        tipSplitFour.text = "$\(four)"

        
        tipLabel.text = String(format: "$%.2f", tip)
        totalLabel.text = String(format: "$%.2f", total)
        tipSplitTwo.text = String(format: "$%.2f", two)
        tipSplitThree.text = String(format: "$%.2f", three)
        tipSplitFour.text = String(format: "$%.2f", four)
        
    }

    @IBAction func onTap(sender: AnyObject) {
        view.endEditing(true)
    }
   
    override func viewDidAppear(animated: Bool) {
        super.viewDidAppear(animated)
        print("view did appear")
    }
    
    override func viewWillDisappear(animated: Bool) {
        super.viewWillDisappear(animated)
        print("view will disappear")
    }
    
    override func viewDidDisappear(animated: Bool) {
        super.viewDidDisappear(animated)
        print("view did disappear")
    }

}

