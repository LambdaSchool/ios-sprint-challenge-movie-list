//
//  MovieTableViewCell.swift
//  Movie List
//
//  Created by Uptiie on 7/30/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import UIKit

class MovieTableViewCell: UITableViewCell {
    
    var movie: Movie?{ didSet {updateViews()}}

    
    func updateViews() {
        guard let movie = movie else { return }
            movieNameLabel.text = movie.title
    }
}
