//
//  MoviesListTableViewCell.swift
//  Movie List
//
//  Created by Mike Nichols on 5/15/20.
//  Copyright © 2020 Lambda School. All rights reserved.
//

import UIKit

class MoviesListTableViewCell: UITableViewCell {
    
    @IBOutlet weak var movieLabel: UILabel!
    @IBOutlet weak var seenSwitch: UISwitch!
    
    var movie: Movie? {
        didSet {
            updateViews()
        }
    }
    
    private func updateViews() {
        if let movie = movie {
            movieLabel.text = movie.title
            seenSwitch.isOn = movie.haveSeen
        }
    }

}
