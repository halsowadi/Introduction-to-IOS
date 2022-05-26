//
//  ViewController.swift
//  C10-CustomList-ver05
//
//  Created by admin1 on 4/19/22.
//  Copyright © 2022 admin1. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var cv_arrayModel: [String] = ["iPad","Xoom","Playbook","TouchPad","Surface"]
    var cv_arrayOS: [String] = ["iOS","Android","BlackBerry","WebOS","Windows"]
    var cv_arrayImg: [String] = ["01-ipad.png","02-xoom.png","03-playbook.png","04-touchpad.png", "05-surface.png"]
    var cv_arrayPrice: [Int] = [499,799,499,499,449]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    // Item 27, pp403
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.cv_arrayModel.count
    }
    
    // Item 28, pp403
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell:MyTableViewCellController = self.tableView.dequeueReusableCell(withIdentifier: "SimpleCell")! as! MyTableViewCellController
        
        cell.vv_lblModel?.text = self.cv_arrayModel[indexPath.row]
        cell.vv_lblOS?.text = self.cv_arrayOS[(indexPath as NSIndexPath).row]
        cell.vv_lblPrice?.text = "$\(self.cv_arrayPrice[indexPath.row])"
        cell.vv_imgView?.image = UIImage(named: self.cv_arrayImg[indexPath.row])
        
        return cell
        
    }
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 96
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let rowValue = cv_arrayModel[(indexPath as NSIndexPath).row]
        let message = "You selected \(rowValue)"
        let controller = UIAlertController(title: "Row Selected", message: message, preferredStyle: .alert)
        let action = UIAlertAction(title: "Yes I Did", style: .default, handler: nil)
        controller.addAction(action)
        present(controller, animated: true, completion: nil)
    }

}

