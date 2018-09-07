//
//  MovieTableViewCell.swift
//  Movie List
//
//  Created by Scott Bennett on 9/7/18.
//  Copyright © 2018 Lambda School. All rights reserved.
//

import UIKit

protocol MovieTableViewCellDelegate: class {
    func isSeenButtonWasTapped(on cell: MovieTableViewCell)
}

class MovieTableViewCell: UITableViewCell {

    weak var delegate: MovieTableViewCellDelegate?
    var movie: Movie? {
        didSet {
            updateViews()
        }
    }
    
    @IBOutlet weak var movieNameTextLabel: UILabel!
    @IBOutlet weak var seenButton: UIButton!
    

    func updateViews() {
        guard let movie = movie else { return }
        
        movieNameTextLabel.text = movie.name
        
        if movie.isSeen {
            seenButton.setTitle("Seen", for: .normal)
        } else {
            seenButton.setTitle("Not Seen", for: .normal)
        }
    }
    
    @IBAction func isSeenToggle(_ sender: Any) {
        delegate?.isSeenButtonWasTapped(on: self)
    }
}
