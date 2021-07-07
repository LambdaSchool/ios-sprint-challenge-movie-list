//
//  MovieTableViewCell.swift
//  Movie List
//
//  Created by Bobby Keffury on 8/3/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import UIKit

class MovieTableViewCell: UITableViewCell {
    
    
    // Label that gets updated by the function
    @IBOutlet weak var movieTitleLabel: UILabel!
    @IBOutlet weak var notSeenButton: UIButton!
    


    // Variable created that calls the function that adds a new movie
    var movie: Movie? {
        didSet {
            updateViews()
        }
    }
    
    // function to update what movie is seen in the cell
    private func updateViews() {
        guard let movie = movie else { return }
        
        movieTitleLabel.text = movie.name
    }
    
    // This is where you switch seen to not seen when tapped
    // EVERY TIME YOU WORK WITH FUNCTIONS: WHAT IS BEING PASSED IN AND WHAT IS BEING PASSED OUT.
    @IBAction func notSeenTapped(_ sender: UIButton) {
        movie?.watched.toggle()
        if movie?.watched == true {
            sender.setTitle("Seen", for: .normal)
        } else {
            sender.setTitle("Not Seen", for: .normal)
        }
    }
    
}
