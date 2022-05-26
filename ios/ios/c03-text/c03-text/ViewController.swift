//
//  ViewController.swift
//  c03-text
//
//  Created by admin1 on 4/5/22.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        let tap = UITapGestureRecognizer(target: self, action:
            #selector(cf_dismissKeyboard))
        view.addGestureRecognizer(tap)
    }
    @IBOutlet weak var vv_field: UITextField!
    
    @objc func cf_dismissKeyboard (_ sender: UITapGestureRecognizer) {
        vv_field.resignFirstResponder()
        
    }
    @IBOutlet weak var vv_button: UIButton!
    @IBAction func cf_change(_ sender: UIButton) {
        //sender.setTitle("Display", for: .normal)
        if (sender.title(for: .normal) == "Button") {
            sender.setTitle("Display", for: .normal)
        }
        else {
            sender.setTitle("Button", for: .normal)
        }
    }
}

