//
//  MovieTableViewCell.swift
//  Movie List
//
//  Created by Andrew Ruiz on 7/19/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import UIKit

class MovieTableViewCell: UITableViewCell {
    
    @IBOutlet weak var movieNameLabel: UILabel!
    
    @IBOutlet weak var hasbeenSeenButtonText: UIButton!
    
    var movie: Movie? {
        didSet {
            updateViews()
        }
    }
    
    private func updateViews() {
        guard let movie = movie else {return}
        
        movieNameLabel.text = movie.name
    }
  
    @IBAction func hasBeenSeenButtonTapped(_ sender: UIButton) {
        
        sender.isSelected = !sender.isSelected

        if sender.isSelected {
            hasbeenSeenButtonText.setTitle("Seen", for: .normal)
        }
            
        else {
            hasbeenSeenButtonText.setTitle("Not Seen", for: .normal)
        }
    }
}

