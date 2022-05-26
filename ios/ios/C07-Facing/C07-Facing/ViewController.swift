//
//  ViewController.swift
//  C07-Facing
//
//  Created by admin1 on 4/14/22.
//  Copyright © 2022 admin1. All rights reserved.
//

import UIKit
import AVFoundation
import CoreLocation

class ViewController: UIViewController, CLLocationManagerDelegate {
    var cv_speechSynthesizer : AVSpeechSynthesizer!
    var cv_locationManager : CLLocationManager!
    
    var cv_strDirection : String = ""
    var cv_strDir : [String] = ["North","Northeast","East","Southeast","South","Southwest","West","Northwest","North"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        cv_speechSynthesizer = AVSpeechSynthesizer()
        let lv_tap = UITapGestureRecognizer(target: self, action: #selector(cf_tapCompass))
        vv_imageView.addGestureRecognizer(lv_tap)
        
        // can be set in GUI - attribute inspector
        vv_imageView.isUserInteractionEnabled = true
        
        cv_locationManager  = CLLocationManager()
        cv_locationManager.delegate = self
        ////cv_locationManager.headingFilter = 5;  // 5 degrees
        if CLLocationManager.locationServicesEnabled() {
            cv_locationManager.startUpdatingHeading()
        }
    }
    
    @IBOutlet weak var vv_imageView: UIImageView!
    @IBOutlet weak var vv_label: UILabel!
    
    @objc func cf_tapCompass(gestureRecognizer: UITapGestureRecognizer) {
        
        // if the tapped view is a UIImageView then set it to imageview
        if (gestureRecognizer.view as? UIImageView) != nil {
            // vv_label.text = "You are facing"
            let lv_myUtterance = AVSpeechUtterance(string: "You are facing \(cv_strDirection)")
            lv_myUtterance.rate = 0.55
            cv_speechSynthesizer.speak(lv_myUtterance)
        }
    }
    
    func locationManager(_ manager: CLLocationManager, didUpdateHeading newHeading: CLHeading) {
        let lv_heading = newHeading.magneticHeading
        vv_label.text = "Heading: \(String(format: "%04.1f", lv_heading)) degrees"
        let index = Int(round(lv_heading / 45.0))
        cv_strDirection = cv_strDir[index]
        
        UIView.animate(withDuration: 0.5, animations: {
            self.vv_imageView.transform = CGAffineTransform(rotationAngle: (CGFloat(-lv_heading) * CGFloat(Double.pi)) / 180.0)
        })
    }
}

