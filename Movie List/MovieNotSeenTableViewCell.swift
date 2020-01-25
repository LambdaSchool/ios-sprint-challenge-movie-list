//
//  MovieNotSeenTableViewCell.swift
//  Movie List
//
//  Created by Nichole Davidson on 1/24/20.
//  Copyright © 2020 Lambda School. All rights reserved.
//

import UIKit

class MovieNotSeenTableViewCell: UITableViewCell {
    
    
    @IBOutlet weak var movieOnListLabel: UILabel!
    @IBOutlet weak var seenButton: UIButton!
    @IBAction func notSeenTapped(_ sender: UIButton) {
        if movie?.seen == true {
            print("Seen")
        } else {
            print("Not Seen")
        }
    }
    
    var movie: Movie? {
        didSet {
            updateViews()
        }
    }
    
    private func updateViews() {
        guard let movie = movie  else { return }
        
        movieOnListLabel.text = movie.name
        seenButton.setTitle(movie.name, for: [])
        
    }
    
}
