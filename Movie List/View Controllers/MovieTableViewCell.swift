//
//  MovieTableViewCell.swift
//  Movie List
//
//  Created by Conner on 7/27/18.
//  Copyright © 2018 Lambda School. All rights reserved.
//

import UIKit

class MovieTableViewCell: UITableViewCell {
    func updateViews() {
        guard let movie = movie else { return }
        movieLabelText.text = movie.movieName
        hasBeenSeenButton.setTitle(movie.isSeen, for: .normal)
    }
    
    @IBAction func toggleSeen(_ sender: Any) {
        
    }
    
    @IBOutlet var movieLabelText: UILabel!
    @IBOutlet var hasBeenSeenButton: UIButton!
    
    
    var movie: Movie? {
        didSet {
            updateViews()
        }
    }
}
