//
//  MovieTableViewCell.swift
//  Movie List
//
//  Created by Iyin Raphael on 8/3/18.
//  Copyright © 2018 Lambda School. All rights reserved.
//

import UIKit

class MovieTableViewCell: UITableViewCell {
    
    private func updateView() {
        guard let movie = movie else {return}
        movieLabel.text = movie.text
    }
    
    var movie: MovieName {
        didSet{
            updateView()
        }
    }
    
    @IBOutlet weak var movieLabel: UILabel!
}
