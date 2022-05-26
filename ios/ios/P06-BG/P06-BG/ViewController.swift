//
//  ViewController.swift
//  P06-BG
//
//  Created by admin1 on 4/19/22.
//  Copyright © 2022 admin1. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        let value = Red_slider.value
        vv_value_Red.text = "\( Int(value) )"
        let value2 = Green_Slider.value
        vv_value_Green.text = "\( Int(value2) )"
        
        let value3 = Blue_Slider.value
        vv_Value_Blue.text = "\( Int(value3) )"    }

    @IBOutlet weak var vv_value_Red: UITextField!
    @IBOutlet weak var vv_value_Green: UITextField!
    
    @IBOutlet weak var vv_Value_Blue: UITextField!

    @IBOutlet weak var Red_slider: UISlider!
    
    @IBOutlet weak var Green_Slider: UISlider!
    
    @IBOutlet weak var Blue_Slider: UISlider!
}

