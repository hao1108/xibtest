//
//  myCell.swift
//  xibTest
//
//  Created by 黃毓皓 on 2017/4/6.
//  Copyright © 2017年 ice elson. All rights reserved.
//

import UIKit

class myCell: UITableViewCell {

    @IBOutlet weak var progressView: UIProgressView!
    
    @IBOutlet weak var label: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
