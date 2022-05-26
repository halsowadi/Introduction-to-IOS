//
//  MyTableViewCellController.swift
//  SimpleList-ver01
//
//  Created by admin1 on 4/19/22.
//  Copyright © 2022 admin1. All rights reserved.
//

import UIKit

class MyTableViewCellController: UITableViewCell {

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    @IBOutlet weak var vv_imgView: UIImageView!
    @IBOutlet weak var vv_lblModel: UILabel!
    @IBOutlet weak var vv_lblOS: UILabel!
    @IBOutlet weak var vv_lblPrice: UILabel!
}
