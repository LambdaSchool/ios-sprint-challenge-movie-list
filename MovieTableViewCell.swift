//
//  MovieTableViewCell.swift
//  Movie List
//
//  Created by Uptiie on 7/19/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import UIKit


class MovieTableViewCell: UITableViewCell {

    @IBOutlet weak var movieNameLabel: UILabel!
    @IBOutlet weak var hasSeenLabel: UILabel!
    
    var movie: Movie? {
        didSet {
            updateViews()
        }
    }

    private func updateViews() {
        guard let movie = movie else { return }
        
        movieNameLabel.text = movie.name
        
    }
}

