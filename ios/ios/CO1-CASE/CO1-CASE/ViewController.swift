//
//  ViewController.swift
//  CO1-CASE
//
//  Created by admin1 on 4/5/22.
//

import Cocoa

class ViewController: NSViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override var representedObject: Any? {
        didSet {
        // Update the view, if already loaded.
        }
    }

    @IBOutlet weak var vv_mylabel: NSTextField!
    @IBAction func cf_case(_ sender: NSButton) {
        vv_mylabel.stringValue = vv_mylabel.stringValue.uppercased()
    }
    
    @IBAction func cf_caseLower(_ sender: Any) {
    vv_mylabel.stringValue = vv_mylabel.stringValue.lowercased()
    }
}

