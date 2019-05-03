//
//  MovieTableViewCell.swift
//  Movie List
//
//  Created by Hayden Hastings on 5/3/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import UIKit

protocol MovieTableViewCellDelegate: class {
    func movieButtonWasPressed(on cell: MovieTableViewCell)
}

class MovieTableViewCell: UITableViewCell {

    func updateViews() {
        guard let movie = movie else { return }
        let movieButtonTitle = movie.isSeen ? "Not Seen" : "Seen"
        isSeenButton.setTitle(movieButtonTitle, for: .normal)
        
        movieLabel.text = movie.name
    }

    @IBOutlet weak var isSeenButton: UIButton!
    @IBOutlet weak var movieLabel: UILabel!
    
    @IBAction func isSeenButtonPressed(_ sender: Any) {
        delegate?.movieButtonWasPressed(on: self)
    }
    
    weak var delegate: MovieTableViewCellDelegate?
    
    var movie: Movie? {
        didSet {
            updateViews()
        }
    }
}
