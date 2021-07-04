//
//  MovieTableViewCell.swift
//  Movie List
//
//  Created by Jesse Ruiz on 9/13/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import UIKit

class MovieTableViewCell: UITableViewCell {
    
    @IBOutlet weak var moveTitleLabel: UILabel!
    @IBOutlet weak var seenNotSeenButton: UIButton!
    
    var movie: Movie? {
        didSet {
            updateViews()
        }
    }
    
    private func updateViews() {
        guard let movie = movie else { return }
        
        moveTitleLabel.text = movie.title
    }
}
