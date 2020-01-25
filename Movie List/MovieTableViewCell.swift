//
//  MovieTableViewCell.swift
//  Movie List
//
//  Created by Lambda_School_Loaner_254 on 1/24/20.
//  Copyright © 2020 Lambda School. All rights reserved.
//

import UIKit

class MovieTableViewCell: UITableViewCell {
    @IBOutlet weak var movieTitleLabel: UILabel!
    
     var movie: Movie? {
            didSet {
                updateViews()
            }
        }
        
        private func updateViews() {
            guard let movie = movie  else { return }
            
            movieTitleLabel.text = movie.movieTitle
        }

    }
