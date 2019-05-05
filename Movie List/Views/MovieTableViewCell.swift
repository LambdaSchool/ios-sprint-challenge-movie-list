//
//  MovieTableViewCell.swift
//  Movie List
//
//  Created by Chris Price on 5/3/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import UIKit

protocol MovieTableViewCellDelegate: class {
    func seenButtonWasTapped(on cell: MovieTableViewCell)
}

class MovieTableViewCell: UITableViewCell {
    
    @IBAction func seenButtonTapped(_ sender: Any) {
        delegate?.seenButtonWasTapped(on: self)
    }
    
    
    func updateViews() {
        guard let movie = movie else { return }
        
        movieLabel.text = movie.movie
        
        let buttonTitle = movie.wasSeen ? "Seen" : "Unseen"
        
        seenButton.setTitle(buttonTitle, for: .normal)
    }
    
    
    var movie: Movie? {
        didSet {
            updateViews()
        }
    }
    
    @IBOutlet weak var movieLabel: UILabel!
    @IBOutlet weak var seenButton: UIButton!
    weak var delegate: MovieTableViewCellDelegate?
    
}
