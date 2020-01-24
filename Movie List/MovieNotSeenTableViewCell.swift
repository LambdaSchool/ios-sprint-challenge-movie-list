//
//  MovieNotSeenTableViewCell.swift
//  Movie List
//
//  Created by Nichole Davidson on 1/24/20.
//  Copyright © 2020 Lambda School. All rights reserved.
//

import UIKit

class MovieNotSeenTableViewCell: UITableViewCell {
    
    @IBOutlet weak var movieOnList: MovieNotSeenTableViewCell!
    @IBOutlet weak var seenTapped: UIButton!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
