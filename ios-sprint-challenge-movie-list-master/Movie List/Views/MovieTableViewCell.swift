//
//  MovieTableViewCell.swift
//  Movie List
//
//  Created by J-Skenandore on 2/7/20.
//  Copyright © 2020 Lambda School. All rights reserved.
//

import UIKit

class MovieTableViewCell: UITableViewCell {

    // MARK: - IBOutlets
    
    @IBOutlet weak var movieNameLabel: UILabel!
    @IBOutlet weak var seenButton: UIButton!
    
    var movie: Movie? {
        didSet {
            self.updateViews()
        }
    }
    
    private func updateViews() {
        guard let movie = movie else { return }
        
        movieNameLabel.text = movie.name
    }
    
    @IBAction func seenButtonTapped(_ sender: Any) {
        if movie?.seen == false {
            seenButton.setTitle("Not Seen", for: .normal)
            movie?.seen = true
        } else {
            seenButton.setTitle("Seen", for: .normal)
            movie?.seen = false
        }
    }
}
