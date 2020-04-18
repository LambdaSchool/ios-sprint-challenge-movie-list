//
//  MovieTableViewCell.swift
//  Movie List
//
//  Created by Sammy Alvarado on 4/18/20.
//  Copyright © 2020 Lambda School. All rights reserved.
//

import UIKit

class MovieTableViewCell: UITableViewCell {

    @IBOutlet weak var movieNameLabel: UILabel!
    
    
    @IBAction func notSeenButton(_ sender: Any) {
    }
    @IBOutlet weak var seenButton: UIButton!
    
    var movies: Movie? {
        didSet {
            updateViews()
        }
    }
    
    private func updateViews() {
        guard let movie = self.movies else { return}
        
        movieNameLabel.text = movie.movieName
    }
    
}
