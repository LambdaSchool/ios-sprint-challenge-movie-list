//
//  MovieTableViewCell.swift
//  Movie List
//
//  Created by Bobby Keffury on 8/3/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import UIKit

class MovieTableViewCell: UITableViewCell {
    
    @IBOutlet weak var movieTitleLabel: UILabel!
    


    var movie: Movie? {
        didSet {
            updateViews()
        }
    }
    
    private func updateViews() {
        guard let movie = movie else { return }
        
        movieTitleLabel.text = movie.name
    }
    
    @IBAction func notSeenTapped(_ sender: Any) {
        // Unsure about how to switch from "Not Seen" to "Seen"
        if movie?.watched == true {
            notSeenTapped("Seen")
        }
    }
    
}
