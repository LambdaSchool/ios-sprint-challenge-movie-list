//
//  MovieTableViewCell.swift
//  Movie List
//
//  Created by De MicheliStefano on 27.07.18.
//  Copyright © 2018 Lambda School. All rights reserved.
//

import UIKit

protocol MovieTableViewCellProtocol {
    func seenMovieButtonWasTapped(on cell: MovieTableViewCell)
}

class MovieTableViewCell: UITableViewCell {

    func updateViews() {
        guard let movie = movie else { return }
        movieTitleLabelText.text = movie.title
        movie.seen == false
            ? seenMovieButtonText.setTitle("Seen", for: .normal)
            : seenMovieButtonText.setTitle("Unseen", for: .normal)
    }
    
    @IBAction func toggleSeenMovie(_ sender: Any) {
        delegate?.seenMovieButtonWasTapped(on: self)
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
