//
//  MovieListTableViewCell.swift
//  Movie List
//
//  Created by Clayton Bonaguidi on 8/2/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import UIKit

protocol movieListTableViewDelegate {
    func seenButtonPressed(cell: MovieListTableViewCell)
}

class MovieListTableViewCell: UITableViewCell {

    @IBOutlet weak var notSeenButton: UIButton!
    @IBOutlet weak var movieTitleLabel: UILabel!
    
    var movieMade: Movie? {
        didSet {
            updateViews()
        }
    }
    
    var delegate: movieListTableViewDelegate?
    
    //MARK: -Functions
    
    @IBAction func notSeenButton(_ sender: Any) {
        delegate?.seenButtonPressed(cell: self)
    }
    
    //MARK: -Properties
    private func updateViews() {
        if let movie = movieMade {
            movieTitleLabel.text = movie.movie
        }
    }
}
