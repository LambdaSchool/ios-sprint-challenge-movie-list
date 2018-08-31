//
//  MovieTableViewCell.swift
//  Movie List
//
//  Created by Jason Modisett on 8/31/18.
//  Copyright © 2018 Lambda School. All rights reserved.
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
        movieTitleLabel.text = movie.title
        let buttonText = movie.hasSeen ? "Not Seen" : "Seen"
        seenButton.setTitle(buttonText, for: .normal)
    }

    var movie: Movie? { didSet { updateViews() }}
    weak var delegate: MovieTableViewCellDelegate?
    
    @IBOutlet weak var movieTitleLabel: UILabel!
    @IBOutlet weak var seenButton: UIButton!
    
}
