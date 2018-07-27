//
//  MovieTableViewCell.swift
//  Movie List
//
//  Created by De MicheliStefano on 27.07.18.
//  Copyright © 2018 Lambda School. All rights reserved.
//

import UIKit

class MovieTableViewCell: UITableViewCell {

    func updateViews() {
        guard let movie = movie else { return }
        movieTitleLabelText.text = movie.title
        movie.seen == true
            ? seenMovieButtonText.setTitle("Seen", for: .normal)
            : seenMovieButtonText.setTitle("Unseen", for: .normal)
    }
    
    // MARK: - Properties
    
    var movie: Movie? {
        didSet {
            updateViews()
        }
    }
    @IBOutlet weak var movieTitleLabelText: UILabel!
    @IBOutlet weak var seenMovieButtonText: UIButton!
    
}
