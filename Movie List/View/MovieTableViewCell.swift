//
//  MovieTableViewCell.swift
//  Movie List
//
//  Created by John Kouris on 8/3/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import UIKit

class MovieTableViewCell: UITableViewCell {
    
    @IBOutlet var movieNameLabel: UILabel!
    @IBOutlet var seenNotSeenButton: UIButton!

    var createdMovie: Movie? {
        didSet {
            updateViews()
        }
    }
    
    @IBAction func seenNotSeenButtonTapped(_ sender: Any) {
        createdMovie!.seen = !createdMovie!.seen
    }
    
    private func updateViews() {
        if let movie = createdMovie {
            movieNameLabel.text = movie.name
            if movie.seen {
                seenNotSeenButton.titleLabel?.text = "Seen"
            } else {
                seenNotSeenButton.titleLabel?.text = "Not Seen"
            }
        }
    }
    

}
