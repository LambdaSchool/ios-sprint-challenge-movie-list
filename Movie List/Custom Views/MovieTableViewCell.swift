//
//  MovieTableViewCell.swift
//  Movie List
//
//  Created by Rob Vance on 4/17/20.
//  Copyright © 2020 Lambda School. All rights reserved.
//

import UIKit

class MovieTableViewCell: UITableViewCell {
// Mark: IBOutlets
    @IBOutlet weak var movieNameLabel: UILabel!
    @IBOutlet weak var seenButton: UIButton!
    
    var movie: Movie? {
        didSet {
            updateViews()
        }
    }
    
    
    private func updateViews() {
        guard let movie = movie else { return }
        movieNameLabel.text = movie.movieName
    }

// Mark: IBAction
    
    @IBAction func seenNotSeenTapped(_ sender: Any) {
        self.movie?.seen.toggle()
        if self.movie?.seen == true {
            self.seenButton.setTitle("seen", for: .normal)
        } else {
            self.seenButton.setTitle("not seen", for: .normal)
        }
    }
}




