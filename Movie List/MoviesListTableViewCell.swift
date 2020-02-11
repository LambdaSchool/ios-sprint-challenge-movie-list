//
//  MoviesListTableViewCell.swift
//  Movie List
//
//  Created by conner on 2/9/20.
//  Copyright © 2020 conner. All rights reserved.
//

import UIKit

class MoviesListTableViewCell: UITableViewCell {
    
    @IBOutlet weak var seen: UIButton!
    @IBOutlet weak var movieLabel: UILabel!
    
    var movie: Movie? {
        // If movie is ever altered
        didSet {
            // Unwarp optional & set title
            guard let movie = movie else { return }
            movieLabel.text = movie.title
        }
    }

    @IBAction func seenTapped(_ sender: Any) {
        // switch value for seen bool
        self.movie?.seen.toggle()
        
        // Change title for the UIButton
        if self.movie?.seen == true {
            self.seen.setTitle("seen", for: .normal)
        } else {
            self.seen.setTitle("not seen", for: .normal)
        }
    }
}
