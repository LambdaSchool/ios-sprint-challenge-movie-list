//
//  MovieTableViewCell.swift
//  Movie List
//
//  Created by Nicolas Rios on 8/3/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import UIKit

class MovieTableViewCell: UITableViewCell {
 
   
    @IBOutlet var hasSeenButton: UIButton!
    
    @IBOutlet var movieNameLabel: UILabel!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
