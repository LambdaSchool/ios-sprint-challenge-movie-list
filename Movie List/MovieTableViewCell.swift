//
//  MovieTableViewCell.swift
//  Movie List
//
//  Created by Bhawnish Kumar on 2/21/20.
//  Copyright © 2020 Lambda School. All rights reserved.
//

import UIKit

class MovieTableViewCell: UITableViewCell {
    @IBOutlet weak var movieLabel: UILabel!
    
   
    @IBOutlet weak var seenButton: UIButton!
    
    var movie: Movie? {
    didSet {
        updateViews()
    }
    }
        
        func updateViews() {
        guard let movie = movie else { return }
            movieLabel.text = movie.name
            
    }

}

