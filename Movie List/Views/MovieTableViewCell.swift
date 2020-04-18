//
//  MovieTableViewCell.swift
//  Movie List
//
//  Created by Bohdan Tkachenko on 4/18/20.
//  Copyright © 2020 Lambda School. All rights reserved.
//

import UIKit

class MovieTableViewCell: UITableViewCell {
    @IBOutlet weak var movieLabel: UILabel!
    
    
    
    @IBAction func seenButtonPressed(_ sender: UIButton) {
        sender.setTitle("Seen", for: .normal)
        movie?.seen = true
    }
    
    
    var movie: Movie? {
        didSet {
            self.updateViews()
        }
    }
    
    private func updateViews() {
        guard let movie = self.movie else { return }
        
        movieLabel.text = movie.name
        // notSeenLabel.text = movie.seen
        
        
    }
    
    
    
}


