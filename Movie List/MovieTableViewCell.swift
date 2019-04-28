//
//  MovieTableViewCell.swift
//  Movie List
//
//  Created by Ryan Murphy on 4/26/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import UIKit



let movieController = MovieController()


class MovieTableViewCell: UITableViewCell {
    
    @IBOutlet weak var movieWatchedToggleButton: UIButton!
    @IBOutlet var movieNameLabel: UILabel!

    var movie: Movie? {
        didSet {
            updateViews()
        }
    }
    
    private func updateViews() {
        guard let movie = movie else { return }
        
        movieNameLabel.text = movie.name
 
    }
    //almost toggles watched button
    var watched = true

        
    @IBAction func movieWatchedToggleButtonPressed(_ sender: Any) {
    
       watched = !watched

        switch watched == false {
        case false:
        movieWatchedToggleButton.titleLabel?.text  = "Watched"
        case true:
            movieWatchedToggleButton.titleLabel!.text = "Not Watched"


    }
        
          
    }
        
    
}

        



