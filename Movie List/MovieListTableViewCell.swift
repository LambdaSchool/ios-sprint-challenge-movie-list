//
//  MovieListTableViewCell.swift
//  Movie List
//
//  Created by Michael on 12/13/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import UIKit

class MovieListTableViewCell: UITableViewCell {

    @IBOutlet weak var movieNameLabel: UILabel!
    
    @IBOutlet weak var hasSeenButton: UIButton!
    @IBAction func hasSeenButtonTapped(_ sender: Any) {
        movieTitle?.hasSeen.toggle()
        updateViews()
    }
    
    var movieTitle: Movie? {
        didSet {
            updateViews()
        }
    }
    
    func updateViews() {
        if let unwrappedMovieTitle = movieTitle {
            movieNameLabel.text = unwrappedMovieTitle.movieName
            if unwrappedMovie.hasSeen == true {
                hasSeenButton.setTitle("Seen", for: .normal)
            } else {
                hasSeenButton.setTitle("Not Seen", for: .normal)
            }
        }
    }
}


