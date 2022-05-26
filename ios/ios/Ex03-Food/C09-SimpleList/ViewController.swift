//
//  ViewController.swift
//  C09-SimpleList
//
//  Created by Hussein AExelsowadi on 4/14/22.
//  Xcode version 10.1, Emulator: XR (should work fine with others though)
//No problems with this app
//

import UIKit

class ViewController: UITableViewController {
    var cv_arrayModel: [String] = ["Miso Soup","Mochi","Salmon Teriyaki"]
    var cv_arrayOS: [String] = ["Soup","Cake","Fish"]
    var cv_arrayImg: [String] = ["Miso_Soup.png","Mochi.png","Salmon_Teriyaki.png"]
    
    
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
        cell.vv_imgView?.image = UIImage(named: self.cv_arrayImg[indexPath.row])
        
        return cell
        
    }
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 96
    }
    /*
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let rowValue = cv_arrayModel[(indexPath as NSIndexPath).row]
        let message = "You selected \(rowValue)"
        let controller = UIAlertController(title: "Row Selected", message: message, preferredStyle: .alert)
        let action = UIAlertAction(title: "Yes I Did", style: .default, handler: nil)
        controller.addAction(action)
        present(controller, animated: true, completion: nil)
    }*/
    
    @IBOutlet var vv_tableView: UITableView!
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if (segue.identifier == "vv_segueForward") {
            if let destination = segue.destination as? MySubViewController {
                if let lv_index = vv_tableView.indexPathForSelectedRow {
                    destination.cv_model = cv_arrayModel[lv_index.row]
                    destination.cv_imgName = cv_arrayImg[(lv_index as NSIndexPath).row]
                }
            }
        }
    }   }

