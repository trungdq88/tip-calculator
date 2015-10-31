//
//  SettingViewController.swift
//  tips
//
//  Created by Dinh Quang Trung on 10/31/15.
//  Copyright © 2015 HAC. All rights reserved.
//

import UIKit

class SettingViewController: UIViewController {

    @IBOutlet var tipSegment: UISegmentedControl!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        let defaults = NSUserDefaults.standardUserDefaults()
        let intValue = defaults.integerForKey("default_tip_percent")
        tipSegment.selectedSegmentIndex = intValue;
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    @IBAction func onTipSegmentChanged(sender: AnyObject) {
        let defaults = NSUserDefaults.standardUserDefaults()
        defaults.setInteger(tipSegment.selectedSegmentIndex, forKey: "default_tip_percent")
        defaults.synchronize()
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
