//
//  MovieTableViewCell.swift
//  Movie List
//
//  Created by brian vilchez on 8/16/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import UIKit

class MovieTableViewCell: UITableViewCell {
    
    var movie: Movie?

    @IBOutlet weak var movieImage: UIImageView!
    @IBOutlet weak var movieNameLabel: UILabel!
    @IBOutlet weak var hasBeenSeenButton: UIButton!
    
    @IBAction func hasBeenSeenTapped(_ sender: UIButton) {
    }
    
    
    
}
