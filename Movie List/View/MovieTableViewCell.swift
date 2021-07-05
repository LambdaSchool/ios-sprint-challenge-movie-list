//
//  MovieTableViewCell.swift
//  Movie List
//
//  Created by Jeremy Taylor on 5/4/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import UIKit

protocol MovieTableViewCellDelegate: AnyObject {
    func toggleSeenStatus(for cell: MovieTableViewCell)
}

class MovieTableViewCell: UITableViewCell {
    @IBOutlet weak var movieTitleLabel: UILabel!
    @IBOutlet weak var seenStatusButton: UIButton!
    
    
    var movie: Movie? {
        didSet {
            updateViews()
        }
    }
    
    weak var delegate: MovieTableViewCellDelegate?
    

    @IBAction func toggleSeenButtonTapped(_ sender: Any) {
        delegate?.toggleSeenStatus(for: self)
    }
    
    private func updateViews() {
        guard let movie = movie else { return }
        movieTitleLabel.text = movie.title
        let buttonTitle = movie.watched ? "Seen" : "Not Seen"
        seenStatusButton.setTitle(buttonTitle, for: .normal)
    }
}
