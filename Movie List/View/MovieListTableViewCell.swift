//
//  MovieListTableViewCell.swift
//  Movie List
//
//  Created by Jake Connerly on 6/7/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import UIKit
//
// MARK: - Protocols
//
protocol MovieCellDelegate: class {
    func seenUnseenButtonTapped(on cell: MovieListTableViewCell)
}
class MovieListTableViewCell: UITableViewCell {
    //
    // MARK: - Outlets
    //
    @IBOutlet weak var movieListLabel: UILabel!
    @IBOutlet weak var seenUnseenButton: UIButton!
    //
    // MARK: - Declerations
    //
    weak var delegate: MovieCellDelegate?
    //
    // MARK: - Actions
    //
    @IBAction func seenUnseenButtonTapped(_ sender: UIButton) {
        self.delegate?.seenUnseenButtonTapped(on: self)
    }
    
    var setMovie: Movie? {
        didSet {
            updateViews()
            print("UpdateViews Ran")
        }
    }
    //
    // MARK: - Methods
    //
    func updateViews() {
        guard let updatedMovie = setMovie else { return }
        print("updateViews Running")
        movieListLabel.text = updatedMovie.movieName
        guard let seenUnseen = updatedMovie.hasSeen ? "seen" : "unseen" else { return }
        seenUnseenButton.setTitle(seenUnseen, for: .normal)
        
    }
}
