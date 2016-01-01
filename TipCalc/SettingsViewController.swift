//
//  SettingsViewController.swift
//  TipCalc
//
//  Created by Joe Halpin on 12/31/15.
//  Copyright © 2015 Joe Halpin. All rights reserved.
//

import UIKit

class SettingsViewController: UIViewController {

    @IBOutlet weak var default_tip_percentage_control: UISegmentedControl!
    
    
    func setDefaultPercentage(){
    let defaultPercentageOptions = [0.18, 0.2, 0.22]
    let defaultPercentage = defaultPercentageOptions[default_tip_percentage_control.selectedSegmentIndex]
    
    let defaults = NSUserDefaults.standardUserDefaults()
    defaults.setDouble(defaultPercentage, forKey: "default_tip_percentage_control")
    defaults.synchronize()
    }
    




}


