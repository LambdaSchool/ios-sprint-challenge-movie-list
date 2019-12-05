//
//  MovieTableViewCell.swift
//  Movie List
//
//  Created by Waseem Idelbi on 12/4/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import UIKit

protocol SeenButtonDelegate {
    func movieWasSeen(cell: MovieTableViewCell)
}

class MovieTableViewCell: UITableViewCell {

    var delegate: SeenButtonDelegate?

    @IBOutlet var movieTitleLabel: UILabel!
    
    @IBOutlet var seenButton: UIButton!
    
    @IBAction func seenButtonTapped(_ sender: Any) {
        delegate?.movieWasSeen(cell: self)
    }
    
    var movie: Movie? {
        didSet {
            self.updateViews()
        }
    }
    
    private func updateViews() {
        guard let movie = movie else {return}
        movieTitleLabel.text = movie.title
        let movieStatus = movie.seen ? "Seen" : "Not Seen"
        seenButton.setTitle(movieStatus, for: [])
    }
}

