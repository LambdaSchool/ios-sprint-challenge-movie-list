//
//  MoviesTableViewCell.swift
//  Movie List
//
//  Created by Jason Hoover on 5/15/20.
//  Copyright © 2020 Lambda School. All rights reserved.
//

import UIKit

class MoviesTableViewCell: UITableViewCell {

    
    @IBOutlet weak var movieTitle: UILabel!
    
    @IBOutlet weak var notSeenButton: UIButton!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
