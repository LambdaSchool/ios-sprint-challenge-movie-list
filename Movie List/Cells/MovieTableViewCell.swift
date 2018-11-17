//
//  MovieTableViewCell.swift
//  Movie List
//
//  Created by Stuart on 11/16/18.
//  Copyright © 2018 Lambda School. All rights reserved.
//

import UIKit

protocol MovieTableViewCellDelegate: class {
    func seenButtonWasTapped(on cell: MovieTableViewCell)
}

class MovieTableViewCell: UITableViewCell {
    
    
    
    func updateViews() {
        guard let movie = movie else { return }
        movieTitleLabel.text = movie.title
        
    }
    
    var movie: Movie? { didSet { updateViews() }}
    weak var delegate: MovieTableViewCellDelegate?
    
    @IBOutlet weak var movieTitleLabel: UILabel!
}
