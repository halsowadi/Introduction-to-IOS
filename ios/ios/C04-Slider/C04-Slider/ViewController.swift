//
//  ViewController.swift
//  C04-Slider
//
//  Created by admin1 on 4/5/22.
//  Copyright © 2022 admin1. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
          let value = vv_slider.value
        vv_value.text = "\( Int(value) )"
    }
    @IBOutlet weak var vv_output: UILabel!
    @IBOutlet weak var vv_value: UILabel!
    @IBOutlet weak var vv_slider: UISlider!
    
    @IBAction func cf_update(_ sender: UISlider) {
        let value = Int(sender.value)
        vv_value.text = "\( value )"
        vv_output.font = vv_output.font.withSize(CGFloat(value))
    }
    
}

