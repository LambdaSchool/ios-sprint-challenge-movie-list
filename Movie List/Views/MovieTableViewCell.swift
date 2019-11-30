//
//  MovieTableViewCell.swift
//  Movie List
//
//  Created by Jeremy Taylor on 11/30/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import UIKit

class MovieTableViewCell: UITableViewCell {
    @IBOutlet weak var movieTitleLabel: UILabel!
    @IBOutlet weak var toggleSeenButton: UIButton!
    
    var movie: Movie? {
        didSet {
            updateViews()
        }
    }
    
    
    @IBAction func toggleSeenButtonTapped(_ sender: UIButton) {
    }
    
    private func updateViews() {
        guard let movie = movie else { return }
        movieTitleLabel.text = movie.name
        let title: String!
        title = movie.hasBeenSeen ? "Seen" : "Not Seen"
        toggleSeenButton.setTitle(title, for: .normal)
    }
}
