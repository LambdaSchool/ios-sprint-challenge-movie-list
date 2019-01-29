//
//  MovieCell.swift
//  Movie List
//
//  Created by Stuart on 1/29/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import UIKit

protocol MovieCellDelegate: class {
    
}

class MovieCell: UITableViewCell {
    
    private func updateViews() {
        guard let movie = movie else { return }
        
        textLabel?.text = movie.title
    }
    
    weak var delegate: MovieCellDelegate?
    
    var movie: Movie? {
        didSet { // didSet Property Observer
            updateViews()
        }
    }
}
