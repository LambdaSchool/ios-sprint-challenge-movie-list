//
//  MovieTableViewCell.swift
//  Movie List
//
//  Created by Bradley Diroff on 2/21/20.
//  Copyright © 2020 Lambda School. All rights reserved.
//

import UIKit

class MovieTableViewCell: UITableViewCell {

    @IBOutlet var nameLabel: UILabel!
    @IBOutlet var seenButton: UIButton!
    
    var movie: Movie? {
        didSet {
            updateViews()
        }
    }
    
    
    @IBAction func didTapSeen(_ sender: Any) {
        guard let theMovie = movie else {return}
        if theMovie.seen {
            movie?.seen = false
        } else {
            movie?.seen = true
        }
    }
    
    
    func updateViews() {
        guard let movie = movie else {return}
        
        nameLabel.text = movie.name
        
        if movie.seen {
            seenButton.titleLabel?.text = "Seen"
        } else {
            seenButton.titleLabel?.text = "Not Seen"
        }
        
        
    }
    
}
