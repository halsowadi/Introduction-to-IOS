//
//  ViewController.swift
//  C02-Case
//
//  Created by admin1 on 4/5/22.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    @IBOutlet weak var vv_mylabel: UILabel!
    
    @IBAction func Lower(_ sender: UIButton) {
    vv_mylabel.text = vv_mylabel.text?.lowercased()
    }
    
    @IBAction func Upper(_ sender: UIButton) {
    vv_mylabel.text = vv_mylabel.text?.uppercased()
    }
}

