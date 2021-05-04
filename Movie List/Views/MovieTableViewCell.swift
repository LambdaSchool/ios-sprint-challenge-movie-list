//
//  MovieTableViewCell.swift
//  Movie List
//
//  Created by David Wright on 11/24/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import UIKit

protocol MovieCellDelegate {
    func seenMovieButtonWasTapped(_ movieCell: MovieTableViewCell)
}

class MovieTableViewCell: UITableViewCell {

    // MARK: - IBOutlets
    @IBOutlet var movieTitleLabel: UILabel!
    @IBOutlet var seenMovieButton: UIButton!
    
    // MARK: - Properties
    var movie: Movie? {
        didSet {
            updateViews()
        }
    }
    var delegate: MovieCellDelegate?
    var indexPath: IndexPath?

    // MARK: - IBActions
    @IBAction func seenMovieButtonTapped(_ sender: UIButton) {
        guard movie != nil else { return }
       
        movie!.hasBeenSeen.toggle()
        delegate?.seenMovieButtonWasTapped(self)
        updateViews()
    }
    
    
    private func updateViews() {
        guard let movie = movie else { return }
        
        movieTitleLabel.text = movie.title
        seenMovieButton.setTitle(movie.hasBeenSeen ? "Seen" : "Not Seen", for: .normal)
    }
}
