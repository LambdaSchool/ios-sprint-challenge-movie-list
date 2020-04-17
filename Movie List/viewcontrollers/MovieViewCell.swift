//
//  MovieViewCell.swift
//  Movie List
//
//  Created by Vincent Hoang on 4/17/20.
//  Copyright © 2020 Lambda School. All rights reserved.
//

import UIKit

class MovieViewCell: UITableViewCell {
    @IBOutlet var movieLabel: UILabel!
    @IBOutlet var notSeenButton: UIButton!
    @IBOutlet var seenButton: UIButton!
    
    var movie: Movie? {
        didSet {
            updateViews()
        }
    }
    
    @IBAction func seenButtonPressed(_ sender: UIButton) {
        movie?.hasSeen = false
        seenButton.isHidden = true
        notSeenButton.isHidden = false
    }
    
    @IBAction func notSeenButtonPressed(_ sender: UIButton) {
        movie?.hasSeen = true
        seenButton.isHidden = false
        notSeenButton.isHidden = true
    }
    
    
    private func updateViews() {
        guard let unwrappedMovie = movie else {
            fatalError("Movie object in table was null")
        }
        
        movieLabel.text = unwrappedMovie.name
        if unwrappedMovie.hasSeen {
            notSeenButton.isHidden = true
            seenButton.isHidden = false
        } else {
            seenButton.isHidden = true
            notSeenButton.isHidden = false
        }
    }
}
