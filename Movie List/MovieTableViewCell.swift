//
//  MovieTableViewCell.swift
//  Movie List
//
//  Created by Bradley Diroff on 2/21/20.
//  Copyright © 2020 Lambda School. All rights reserved.
//

import UIKit

protocol MovieSeenDelegate {
    func movieWasChanged(_ movie: Movie)
}

class MovieTableViewCell: UITableViewCell {

    @IBOutlet var nameLabel: UILabel!
    @IBOutlet var seenButton: UIButton!
    
    var movie: Movie? {
        didSet {
            updateViews()
        }
    }
    
    var delegate: MovieSeenDelegate?
    
    @IBAction func didTapSeen(_ sender: Any) {
        guard let theMovie = movie else {return}
        if theMovie.seen == true {
            movie?.seen = false
        } else {
            movie?.seen = true
        }
        
        if let newMovie = movie {
            delegate?.movieWasChanged(newMovie)
        }
    }
    
    
    func updateViews() {
        guard let movie = movie else {return}
        
        nameLabel.text = movie.name
        
        if movie.seen {
            seenButton.setTitle("Seen",for: .normal)
        } else {
            seenButton.setTitle("Not Seen",for: .normal)
        }
        
    }
    
}
