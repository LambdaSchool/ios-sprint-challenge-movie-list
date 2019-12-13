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
    
    
    
    
    @IBAction func hasSeenTapped(_ sender: Any) {
        movieTitle?.hasSeen.toggle()
        updateViews()
    }
    
    
    var movieTitle: Movie? {
        didSet {
            updateViews()
        }
    }
    
    func updateViews() {
        
        if let movieTitle = movieTitle {
            movieNameLabel.text = "\(movieTitle.movieName)"
            
            if movieTitle.hasSeen == false {
                hasSeenButton.setTitle("Not Seen", for: .normal)
            } else {
                hasSeenButton.setTitle("Seen", for: .normal)
            }
        }
    }
}


