//
//  MovieListTableViewCell.swift
//  Movie List
//
//  Created by Craig Swanson on 9/29/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import UIKit

protocol SeenStatusChange {
    func wasSeenStatus(_ movie: Movie)
}

class MovieListTableViewCell: UITableViewCell {
    
    @IBOutlet weak var movieNameLabel: UILabel!
    @IBOutlet weak var seenButton: UIButton!
    
    var delegate: SeenStatusChange?
    
    var movie: Movie? {
        didSet {
            updateView()
        }
    }
    
   
    @IBAction func movieSeenButtonTapped(_ sender: UIButton) {
        movie?.seen.toggle()
        delegate?.wasSeenStatus(movie!)
    }
    
    func updateView() {
        guard let movie = movie else { return }

        movieNameLabel.text = movie.name
        if movie.seen {
            seenButton.setTitle("Seen", for: .normal)
        } else {
            seenButton.setTitle("Not Seen", for: .normal)
        }
    }
}
