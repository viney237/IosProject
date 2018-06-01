//
//  customTableViewCell.swift
//  MyApp
//
//  Created by Deepthi Mamillapalli on 18/05/2018.
//  Copyright © 2018 Vinay. All rights reserved.
//

import UIKit

class customTableViewCell: UITableViewCell {
    
    
    @IBOutlet weak var imgImage: UIImageView!
    
    @IBOutlet weak var lblTitle: UILabel!

    @IBOutlet weak var lblSubtitle: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
