//
//  MovieTableViewCell.swift
//  Movie List
//
//  Created by Andrew Ruiz on 7/19/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import UIKit

class MovieTableViewCell: UITableViewCell {
    
    @IBOutlet weak var movieNameLabel: UILabel!
    @IBOutlet weak var isSeen: UILabel!
    
    var movie: Movie? {
        didSet {
            updateViews()
        }
    }
    
    private func updateViews() {
        guard let movie = movie else {return}
        
        movieNameLabel.text = movie.name
    }
  
}

