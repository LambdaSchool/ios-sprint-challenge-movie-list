//
//  MovieTableViewCell.swift
//  Movie List
//
//  Created by Jessie Ann Griffin on 8/4/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import UIKit

class MovieTableViewCell: UITableViewCell {

    @IBOutlet weak var movieTitleLabel: UILabel!
    
    var movieTitle: String? {
        didSet {
            updateViews()
        }
    }
    
    private func updateViews() {
        guard let movieTitle = movieTitle else { return }
        
        movieTitleLabel.text = movieTitle
    }
}
