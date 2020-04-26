//
//  MovieTableViewCell.swift
//  Movie List
//
//  Created by Sammy Alvarado on 4/18/20.
//  Copyright © 2020 Lambda School. All rights reserved.
//

import UIKit

class MovieTableViewCell: UITableViewCell {
    
    weak var delegate: MovieTableViewCellDelegate?

    @IBOutlet weak var movieNameLabel: UILabel!
    @IBOutlet weak var seenButton: UIButton!

    
    @IBAction func seenButtonAction(_ sender: Any) {
        delegate?.hasSeenButtonWasTapped(onCell: self)
    }
    
    
    
    var movies: Movie? {
        didSet {
            updateViews()
        }
    }
    
    private func updateViews() {
        guard let movie = self.movies else { return }
        
        movieNameLabel.text = movie.movieName
        
        // This allows me to which off and on the button. 
        let hasSeenButtonTitle = movie.seenOrNot ? "Seen" : "Not Seen"
        seenButton.setTitle(hasSeenButtonTitle, for: [])
    
    }
}
