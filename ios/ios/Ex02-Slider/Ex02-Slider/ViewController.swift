//
//  ViewController.swift
//  Ex02-Slider
//
//  Created by compsci on 11/23/15.
//  Copyright © 2015 compsci. All rights reserved.
//
//IBaction need to be associated
//need to add IBoutlet for slider
//Add value label
//fix cf_changeFont
//Fixed slider varibale name, still poping up as an error though
import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    @IBOutlet weak var vv_txtLabel: UILabel!

    @IBOutlet weak var vv_value: UILabel!
    @IBOutlet weak var vv_slider: UISlider!
    
    @IBAction func cf_changeFont(sender: UISlider) {
        let value = Int(sender.value)
        vv_txtLabel.font = vv_txtLabel.font.withSize(CGFloat(value))    }
    
}

