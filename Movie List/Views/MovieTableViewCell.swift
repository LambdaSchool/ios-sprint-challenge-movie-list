//
//  MovieTableViewCell.swift
//  Movie List
//
//  Created by Jon Bash on 2019-10-11.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import UIKit

protocol MovieCellDelegate {
    func toggleMovieSeenButton(_ cell: MovieTableViewCell)
}

class MovieTableViewCell: UITableViewCell {
    
    var movie: Movie? {
        didSet {
            updateViews()
        }
    }
    
    var delegate: MovieCellDelegate?
    
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var seenButton: UIButton!
    
    @IBAction func seenButtonTapped(_ sender: Any) {
        delegate?.toggleMovieSeenButton(self)
        //updateViews() // calling this causes the button to be truncated for a micro-moment! why?!
    }
    
    func updateViews() {
        guard let movie = movie
            else { return }

        titleLabel.text = movie.title
        var seenText: String {
            if movie.seen {
                return "Seen"
            } else {
                return "Not seen"
            }
        }
        seenButton.setTitle(seenText, for: .normal)
    }
}
