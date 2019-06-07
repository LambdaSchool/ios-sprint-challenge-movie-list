//
//  MovieTableViewCell.swift
//  Movie List
//
//  Created by Sean Acres on 6/7/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import UIKit

protocol MovieTableViewCellDelegate: class {
    func isSeenButtonTapped(on cell: MovieTableViewCell)
}

class MovieTableViewCell: UITableViewCell {

    @IBOutlet var movieNameLabel: UILabel!
    @IBOutlet var isSeenButton: UIButton!
    weak var delegate: MovieTableViewCellDelegate?
    
    var movie: Movie? {
        didSet {
            updateViews()
        }
    }
    
    func updateViews() {
        guard let movie = movie else { return }
        movieNameLabel.text = movie.movieName
        if movie.isSeen {
            isSeenButton.setTitle("Seen", for: .normal)
            isSeenButton.titleLabel?.font = .boldSystemFont(ofSize: 15.0)
        } else {
            isSeenButton.setTitle("Not Seen", for: .normal)
        }
        
    }
    
    @IBAction func isSeenButtonTapped(_ sender: Any) {
        self.delegate?.isSeenButtonTapped(on: self)
    }
    
}
