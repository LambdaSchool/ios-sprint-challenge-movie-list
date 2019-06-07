//
//  MovieListTableViewCell.swift
//  Movie List
//
//  Created by Jordan Davis on 6/7/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import UIKit

protocol MovieListTableViewCellDelegate: class {
    func seenButtonWasPressed(on cell: MovieListTableViewCell)
}

class MovieListTableViewCell: UITableViewCell {
        
        //MARK: -Actions
        
        @IBAction func seenButtonPressed(_ sender: Any) {
            delegate?.seenButtonWasPressed(on: self)
        }
        
        //MARK: -Functions
        func updateViews() {
            guard let movie = movie else { return }
            let seenButtonTitle = movie.hasSeen ? "Not Seen" : "Seen"
            seenButton.setTitle(seenButtonTitle, for: .normal)
            movieTitleLabel.text = addMovieVC.movieTitleTextField?.text
            
        }
        
        
        //MARK: -Properties
        var movie: Movie? {
            didSet {
                updateViews()
            }
        }
        
        @IBOutlet var movieTitleLabel: UILabel!
        @IBOutlet var seenButton: UIButton!
        weak var delegate: MovieListTableViewCellDelegate?
        
        var addMovieVC = AddNewMovieViewController()
        
}
