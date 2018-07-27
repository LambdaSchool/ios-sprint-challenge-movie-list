//
//  MovieTableViewCell.swift
//  Movie List
//
//  Created by De MicheliStefano on 27.07.18.
//  Copyright © 2018 Lambda School. All rights reserved.
//

import UIKit

protocol MovieTableViewCellProtocol {
    func seenMovieButtonWasTapped(on cell: MovieTableViewCell) -> Movie
}

class MovieTableViewCell: UITableViewCell {

    // MARK: - Methods
    
    func updateViews() {
        guard let movie = movie else { return }
        movieTitleLabelText.text = movie.title
        movie.seen == false
            ? seenMovieButtonText.setTitle("Unseen", for: .normal)
            : seenMovieButtonText.setTitle("Seen", for: .normal)
    }
    
    @IBAction func toggleSeenMovie(_ sender: Any) {
        movie = delegate?.seenMovieButtonWasTapped(on: self)
    }
    
    // MARK: - Properties
    
    var movie: Movie? {
        didSet {
            updateViews()
        }
    }
    
    var delegate: MovieTableViewCellProtocol?
    @IBOutlet weak var movieTitleLabelText: UILabel!
    @IBOutlet weak var seenMovieButtonText: UIButton!
    
}
