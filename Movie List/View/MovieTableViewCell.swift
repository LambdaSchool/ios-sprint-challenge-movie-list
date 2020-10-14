//
//  MovieTableViewCell.swift
//  Movie List
//
//  Created by John Kouris on 8/3/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import UIKit

protocol MovieTableViewDelegate {
    func seenButtonTapped(cell: MovieTableViewCell)
}

class MovieTableViewCell: UITableViewCell {
    
    @IBOutlet var movieNameLabel: UILabel!
    @IBOutlet var seenNotSeenButton: UIButton!

    var createdMovie: Movie? {
        didSet {
            updateViews()
        }
    }
    
    var delegate: MovieTableViewDelegate?
    
    @IBAction func seenNotSeenButtonTapped(_ sender: Any) {
        delegate?.seenButtonTapped(cell: self)
    }
    
    private func updateViews() {
        if let movie = createdMovie {
            movieNameLabel.text = movie.name
        }
    }
}
