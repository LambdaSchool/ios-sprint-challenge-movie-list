//
//  MovieTableViewCell.swift
//  Movie List
//
//  Created by Blake Andrew Price on 7/19/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import UIKit

class MovieTableViewCell: UITableViewCell {
    @IBOutlet weak var movieLabel: UILabel!
    @IBOutlet weak var seenButton: UIButton!
    @IBAction func seenButtonTapped(_ sender: UIButton) {
        movie?.seenNotSeen.toggle()
    }
    
    var movie: Movie? {
        didSet {
            updateViews()
        }
    }
    
    private func updateViews() {
        guard let movie = movie else { return }
        
        movieLabel.text = movie.movie
        seenButton.setTitle(movie.seenNotSeen ? "Seen" : "Not Seen", for: .normal)
    }
    
}
