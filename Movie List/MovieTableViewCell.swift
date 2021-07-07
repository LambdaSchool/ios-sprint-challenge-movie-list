//
//  MovieTableViewCell.swift
//  Movie List
//
//  Created by Casualty on 8/4/19.
//  Copyright © 2019 Thomas Dye. All rights reserved.
//

import UIKit

class MovieTableViewCell: UITableViewCell {
    
    
    // Adding Labels and Buttons
    @IBOutlet weak var movieTitleLabel: UILabel!
    
    @IBOutlet weak var seenButton: UIButton!
    
    
    // Defining movie of type Movie
    var movie: Movie? {
        didSet {
            updateView()
        }
    }
    
    // Defining Delegate
    var newDelegate: AddMovieDelegate?
    
    // Seen Button Tapped
    @IBAction func seenButtonTapped(_ sender: UIButton) {
        
        guard let movie = movie else {
            
            return
            
        }
        
        self.movie = newDelegate?.toggleButtonSeenNotSeen(movie)
    }
    
    // Update View Function
    func updateView() {
        guard let movie = movie else {
            return
        }
        
        movieTitleLabel.text = movie.title

        seenButton.setTitle(movie.seen ? "Seen" : "Not Seen", for: .normal)
    }
}
