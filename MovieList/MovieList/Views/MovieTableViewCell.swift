//
//  MovieTableViewCell.swift
//  Movie List
//
//  Created by William Chen on 8/16/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import UIKit

class MovieTableViewCell: UITableViewCell {
    
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var notSeenButton: UIButton!
    
    


    @IBAction func notSeenPressed(_ sender: UIButton) {
        notSeenButton.setTitle("Seen", for: .normal
        )
    }
    
}
