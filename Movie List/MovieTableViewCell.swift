//
//  MovieTableViewCell.swift
//  Movie List
//
//  Created by Osha Washington on 11/25/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import UIKit

class MovieTableViewCell: UITableViewCell {

    // - OUTLETS
    @IBOutlet var movieTitleLabel: UILabel!
    @IBOutlet var hasSeenButton: UIButton!
    
    var movie: Movie? {
        didSet {
            updateViews()
        }
    }
    @IBAction func hasSeenButtonTapped(_ sender: UIButton) {
        if movie != nil {
            movie!.seen.toggle()
        }
        updateViews()
    }
    
    private func updateViews() {
        guard let movie = movie else { return }
        
        movieTitleLabel.text = movie.movieName
        if movie.seen {
            hasSeenButton.setTitle("Seen", for: .normal)
        } else {
            hasSeenButton.setTitle("Not Seen", for: .normal)
        }
    }
}
