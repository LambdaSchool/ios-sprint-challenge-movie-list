//
//  MovieTableViewCell.swift
//  Movie List
//
//  Created by Bronson Mullens on 4/17/20.
//  Copyright © 2020 Lambda School. All rights reserved.
//

import UIKit

class MovieTableViewCell: UITableViewCell {
    
    @IBOutlet weak var movieNameLabel: UILabel!
    @IBOutlet weak var hasSeenButton: UIButton!
    
    @IBAction func hasSeenButtonTapped(_ sender: Any) {
    }
    
    private func updateViews() {
        guard let movie = self.movie else { return }
        
        movieNameLabel.text = movie.movieName
        hasSeenButton.setTitle(movie.hasSeen ? "Seen" : "Not Seen", for: .normal)
    }
    
    var movie: Movie? {
        didSet {
            self.updateViews()
        }
    }

}
