//
//  ViewController.swift
//  C05-switch
//
//  Created by admin1 on 4/14/22.
//  Copyright © 2022 admin1. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    @IBOutlet weak var vv_btnRed: UIButton!
    @IBOutlet weak var vv_btnGreen: UIButton!
    @IBOutlet weak var vv_btnBlue: UIButton!


    @IBOutlet weak var vv_switch: UISwitch!
    
    @IBAction func cf_ChangeColor(_ sender: UIButton) {
        if (vv_switch.isOn) {
            switch sender.tag {
            case 1: self.view.backgroundColor = UIColor.red
            case 2: self.view.backgroundColor = UIColor.green
            case 3: self.view.backgroundColor = UIColor.blue
            default: break
            }
        }
        else {
            switch sender.tag {
            case 1: vv_btnRed.backgroundColor = UIColor.red
            case 2: vv_btnGreen.backgroundColor = UIColor.green
            case 3: vv_btnBlue.backgroundColor = UIColor.blue
            default: break
            }
        }    }
    
    
    
    @IBAction func cf_rest(_ sender: UISwitch) {
        if ( !sender.isOn ) {
            vv_btnRed.setTitleColor(UIColor.red, for: .normal)
            vv_btnGreen.setTitleColor(UIColor.green, for: .normal)
            vv_btnBlue.setTitleColor(UIColor.blue, for: .normal)
            
            vv_btnRed.backgroundColor = UIColor.white
            vv_btnGreen.backgroundColor = UIColor.white
            vv_btnBlue.backgroundColor = UIColor.white
            self.view.backgroundColor = UIColor.white
        }    }
    
}

