//
//  NewsTableViewCell.swift
//  NewsTj
//
//  Created by Surya on 6/24/20.
//  Copyright © 2020 Surya. All rights reserved.
//

import UIKit

class NewsTableViewCell: UITableViewCell {

    @IBOutlet weak var photoNews: UIImageView!
    @IBOutlet weak var nameNews: UILabel!
    @IBOutlet weak var descNews: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
