//
//  MovieTableViewCell.swift
//  Movie List
//
//  Created by Matthew Martindale on 2/8/20.
//  Copyright © 2020 Lambda School. All rights reserved.
//

import UIKit

class MovieTableViewCell: UITableViewCell {

    @IBOutlet weak var movieTitleLabel: UILabel!
    @IBOutlet weak var hasBeenWatchedTapped: UIButton!
    @IBAction func hasBeenWatchedButton(_ sender: Any) {
        hasBeenWatchedTapped.setTitle("Watched", for: .normal)
    }
    
    var movie: Movie? {
        didSet {
            self.updateView()
        }
    }
    
    private func updateView() {
        guard let movie = movie else { return }
        movieTitleLabel.text = movie.name
    }

}
