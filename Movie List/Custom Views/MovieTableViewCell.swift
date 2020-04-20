//
//  MovieTableViewCell.swift
//  Movie List
//
//  Created by Ian French on 4/19/20.
//  Copyright © 2020 Lambda School. All rights reserved.
//


import UIKit

class MovieTableViewCell: UITableViewCell {

    // MARK: - IBOutlets

    
    
    
    
    var movie: Movie? {
        didSet {
            self.updateViews()
        }
    }
    
    private func updateViews() {
        guard let movie = self.movie else { return }
        
        
        nameLabel.text = movie.movieName
      
    }
}
