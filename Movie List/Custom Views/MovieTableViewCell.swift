//
//  MovieTableViewCell.swift
//  Movie List
//
//  Created by Andrew Ruiz on 8/16/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import UIKit

class MovieTableViewCell: UITableViewCell {

    @IBOutlet weak var movieTitleLabel: UILabel!
    @IBOutlet weak var hasBeenSeenButton: UIButton!
    var movie: Movie? {
        didSet {
            updateViews()
        }
    }
    
    private func updateViews() {
        guard let movie = movie else { return }
        
        movieTitleLabel.text = movie.movieName
    }
    
    
    
    @IBAction func hasBeenSeenButtonPressed(_ sender: Any) {
        print("Selected")
        
        if hasBeenSeenButton.isSelected == true {
            hasBeenSeenButton.isSelected.toggle()
            hasBeenSeenButton.setTitle("Not Seen", for: .normal)
        } else {
            hasBeenSeenButton.isSelected.toggle()
            hasBeenSeenButton.setTitle("Seen", for: .normal)

        }
    }
}
