//
//  ViewController.swift
//  C06-Timer
//
//  Created by admin1 on 4/14/22.
//  Copyright © 2022 admin1. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
var cv_timer : Timer = Timer()
var cv_counter : NSInteger = 0
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        vv_stopItem.isEnabled = false
        
        vv_cntLabel.layer.cornerRadius = 20
        vv_cntLabel.layer.borderWidth = 5
        vv_cntLabel.layer.borderColor = UIColor.orange.cgColor
        vv_cntLabel.layer.backgroundColor = UIColor.green.cgColor    }

    @IBOutlet weak var vv_cntLabel: UILabel!
    
    @IBOutlet weak var vv_startItem: UIBarButtonItem!

    @IBOutlet weak var vv_stopItem: UIBarButtonItem!
    

    @IBAction func cf_startCnt(_ sender: UIBarButtonItem) {
   
        cv_timer = Timer.scheduledTimer(timeInterval: 0.2, target: self, selector:
            #selector(cfp_updateCnt), userInfo: nil, repeats: true);
        sender.isEnabled = false
        vv_stopItem.isEnabled = true    }
    

    
    @IBAction func cf_stopCnt(_ sender: UIBarButtonItem) {
        cv_timer.invalidate()
        sender.isEnabled = false
        vv_startItem.isEnabled = true
    }
    
    @IBAction func cf_clearCnt(_ sender: UIBarButtonItem) {
        cv_timer.invalidate()
        cv_counter = 0
        vv_cntLabel.text = "000"
        vv_startItem.isEnabled = true
        vv_stopItem.isEnabled = false
    }

    
    @objc func cfp_updateCnt() {
        cv_counter = cv_counter+1
        let str = String(cv_counter)
        vv_cntLabel.text = String(String(str.reversed()).padding(toLength: 3,
                                                                 withPad: "0", startingAt: 0).reversed())
    }
}

