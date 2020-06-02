//
//  MovieListTableViewCell.swift
//  Movie List
//
//  Created by Dojo on 6/1/20.
//  Copyright © 2020 Lambda School. All rights reserved.
//

import UIKit

protocol movieListTableViewDelegate {
    func seenButtonPressed(cell: MovieListTableViewCell)
}

class MovieListTableViewCell: UITableViewCell {
    
    @IBOutlet weak var notSeenButton: UIButton!
    @IBOutlet weak var movieLabel: UILabel!
    
    var movieMade: Movie? {
        didSet { updateViews()}
    }
    
    var delegate: movieListTableViewDelegate?
    
    
    
    @IBAction func notSeenButton(_ sender: Any) {
        delegate?.seenButtonPressed(cell: self)
    }
    
    
    private func updateViews() {
        if let movie = movieMade {
            movieLabel.text = movie.name
            
            if movie.seen {
                notSeenButton.setTitle("Seen", for: .normal)
            } else {
                notSeenButton.setTitle("Not Seen", for: .normal)
            }
        }
    }
}
