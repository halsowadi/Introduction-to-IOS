//
//  MySubViewController.swift
//  C09-SimpleList
//
//  Created by admin1 on 4/21/22.
//  Copyright © 2022 admin1. All rights reserved.
//

import UIKit

class MySubViewController: UIViewController {
    var cv_model : String = "Miso Soup"
    var cv_imgName : String = "Miso_Soup.png"
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationItem.title = cv_model
        if(cv_model == "Mochi"){
            
            vv_labelModel.text = "Wrap red bean paste in aluminum foil and place in the freezer for at least 3 hours. Mix sweet rice flour and green tea powder thoroughly in a microwave-safe glass or ceramic bowl. Stir in water, then sugar. Mix until smooth. Cover bowl with plastic wrap.Cook the rice flour mixture in the microwave for 3 minutes and 30 seconds. Meanwhile, remove red bean paste from the freezer and divide paste into 8 equal balls. Set aside. Stir rice flour mixture and heat for another 15 to 30 seconds."        }
            
        else  if(cv_model == "Miso Soup"){
            vv_labelModel.text = "In a medium saucepan over medium-high heat, combine dashi granules and water; bring to a boil. Reduce heat to medium, and whisk in the miso paste. Stir in tofu. Separate the layers of the green onions, and add them to the soup. Simmer gently for 2 to 3 minutes before serving."
        }
        else {
            vv_labelModel.text = "Mix sesame oil, lemon juice, soy sauce, brown sugar, sesame seeds, ground mustard, ginger, and garlic powder in a small saucepan over low heat. Bring to a simmer, stirring until sugar has dissolved. Set aside 1/2 cup of marinade for basting.Pour remaining marinade into a resealable plastic bag and place salmon into the marinade. Squeeze air out of the bag, seal, and marinate the salmon steaks for at least 1 hour (2 hours for better flavor). Drain and discard used marinade."

        }
        vv_imageView.image = UIImage(named: cv_imgName)
        // Do any additional setup after loading the view.
    }
    
    @IBOutlet weak var vv_imageView: UIImageView!
    
    @IBOutlet weak var vv_labelModel: UILabel!
    
}
