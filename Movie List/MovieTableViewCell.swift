//
//  MovieTableViewCell.swift
//  Movie List
//
//  Created by Wyatt Harrell on 2/21/20.
//  Copyright © 2020 Lambda School. All rights reserved.
//

import UIKit

class MovieTableViewCell: UITableViewCell {

    @IBOutlet weak var movieTitleLabel: UILabel!
    
    @IBOutlet weak var hasSeenButton: UIButton!
    

    var movie: Movie? {
        didSet {
            updateViews()
        }
    }
    
    
    func updateViews() {
        guard let movie = movie else { return }
        
        movieTitleLabel.text = movie.name
        
        
        if movie.hasSeen {
            hasSeenButton.isSelected = true
        } else {
            hasSeenButton.isSelected = false
        }
        
    }
    
    
}
