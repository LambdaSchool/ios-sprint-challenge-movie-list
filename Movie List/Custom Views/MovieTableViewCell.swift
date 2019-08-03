//
//  MovieTableViewCell.swift
//  Movie List
//
//  Created by Dillon P on 8/3/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import UIKit

protocol CellButtonDelegate {
    func movieWatchedStatus(_ movie: Movie, index: Int)
}

class MovieTableViewCell: UITableViewCell {

    // MARK: - Outlets
    
    @IBOutlet weak var movieNameLabel: UILabel!
    @IBOutlet weak var movieWatchedStatus: UIButton!
    
    
    // MARK: - Properties
    
    var buttonDelegate: CellButtonDelegate?
    var index: IndexPath?
    
    var movie: Movie? {
        didSet {
            updateViews()
        }
    }
    
    // MARK: - Functions
    
    private func updateViews() {
        guard let movie = movie else { return }
        movieNameLabel.text = movie.name
        if movie.seen == true {
            movieWatchedStatus.setTitle("Seen", for: .normal)
        } else if movie.seen == false {
            movieWatchedStatus.setTitle("Not Seen", for: .normal)
        }
    }
    

    // MARK: - Actions
    
    @IBAction func movieWatchedTapped(_ sender: Any) {
        guard let movie = movie, let index = index?.row else { return }
        var newMovie = movie
        if movie.seen == false {
            movieWatchedStatus.setTitle("Seen", for: .normal)
            newMovie.seen = true
            buttonDelegate?.movieWatchedStatus(newMovie, index: index)
        } else if movie.seen == true {
            movieWatchedStatus.setTitle("Not Seen", for: .normal)
            newMovie.seen = false
            buttonDelegate?.movieWatchedStatus(newMovie, index: index)
        }
    }
}

