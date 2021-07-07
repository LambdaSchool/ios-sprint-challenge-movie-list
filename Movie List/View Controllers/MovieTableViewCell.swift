//
//  MovieTableViewCell.swift
//  Movie List
//
//  Created by Paul Yi on 1/11/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import UIKit

protocol MovieTableViewCellDelegate: class {
    func updateCell(on cell: MovieTableViewCell)
}

class MovieTableViewCell: UITableViewCell {
    weak var delegate: MovieTableViewCellDelegate?
    
    var movie: Movie? {
        didSet {
            updateViews()
        }
    }
    
    @IBOutlet var movieLabel: UILabel!
    @IBOutlet var seen: UIButton!
    
    func updateViews() {
        guard let movie =  movie else { return }
        movieLabel.text = movie.title
        if movie.seen == true {
            seen.setTitle("Seen", for: .normal)
        } else {
            seen.setTitle(("Unseen"), for: .normal)
        }
    }
    
    @IBAction func toggleSeen(_ sender: UIButton) {
        delegate?.updateCell(on: self)
    }
    
    
}
