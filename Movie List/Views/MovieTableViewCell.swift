//
//  MovieTableViewCell.swift
//  Movie List
//
//  Created by dc on 2/21/20.
//  Copyright © 2020 Lambda School. All rights reserved.
//

import UIKit



class MovieTableViewCell: UITableViewCell {

    @IBOutlet weak var movieNameLabel: UILabel!
    @IBOutlet weak var toggleSeenButton: UIButton!
    
    var movie: Movie? {
        didSet {
            updateViews()
        }
    }
    
    private func updateViews() {
        if let movie = self.movie {
            movieNameLabel.text = movie.name
            toggleSeenButton.setTitle(movie.hasBeenSeen ? "Seen" : "Not Seen", for: .normal)
        }
    }

    @IBAction func handleToggleSeenAction(_ sender: UIButton) {
        if let movie = self.movie {
            movie.hasBeenSeen = !movie.hasBeenSeen
            updateViews()
        }
    }
}
