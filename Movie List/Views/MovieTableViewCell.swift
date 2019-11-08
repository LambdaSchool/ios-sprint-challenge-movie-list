//
//  MovieTableViewCell.swift
//  Movie List
//
//  Created by Donella Barcelo on 11/8/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import UIKit

protocol MovieTableViewCellDelegate: AnyObject {
    func isSeenButtonTapped(on cell: MovieTableViewCell)
}

class MovieTableViewCell: UITableViewCell {
    
    @IBOutlet weak var movieNameLabel: UILabel!
    @IBOutlet weak var isSeenButton: UIButton!
    
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
            isSeenButton.setTitle("Seen", for: [])
            isSeenButton.titleLabel?.font = .boldSystemFont(ofSize: 13.0)
        } else {
            isSeenButton.setTitle("Not Seen", for: [])
        }
    }
    
    @IBAction func isSeenButtonTapped(_ sender: Any) {
        self.delegate?.isSeenButtonTapped(on: self)
    }
}
