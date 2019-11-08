//
//  MovieTableViewController.swift
//  Movie List
//
//  Created by Angelique Abacajan on 11/8/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import UIKit

class MovieTableViewCell: UITableViewCell {

    @IBOutlet weak var movieLabel: UILabel!
    @IBOutlet weak var hasSeenButton: UIButton!

    var movie: Movie? {
        didSet {
class MovieTableViewCell: UITableViewCell {
        // Configure the view for the selected state
    }

    func seenMovieTapped(_ sender: UIButton) {

    if let hasSeenMovie = movie?.seen {
        if (hasSeenMovie) {
            movie?.seen = false
            sender.setTitle("Not Seen", for: .normal)
        } else {
            movie?.seen = true
            sender.setTitle("Seen", for: .normal)
            }
        }
    }

    func updateViews() {
        guard let movie = movie else { return }

        movieLabel.text = movie.movie
        if (movie.seen) {
            hasSeenButton.setTitle("Seen", for: .normal)
        } else {
            hasSeenButton.setTitle("Not Seen", for: .normal)
        }

    }

        }
    }
}

