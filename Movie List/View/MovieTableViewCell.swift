//
//  MovieTableViewCell.swift
//  Movie List
//
//  Created by John Kouris on 8/3/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import UIKit

protocol MovieTableViewDelegate {
    func seenButtonTapped(cell: MovieTableViewCell)
}

class MovieTableViewCell: UITableViewCell {
    
    @IBOutlet var movieNameLabel: UILabel!
    @IBOutlet var seenNotSeenButton: UIButton!

    var createdMovie: Movie? {
        didSet {
            updateViews()
        }
    }
    
    var delegate: MovieTableViewDelegate?
    
    @IBAction func seenNotSeenButtonTapped(_ sender: Any) {
        guard let movie = createdMovie else { return }
        
//        if movie.seen {
//            createdMovie?.seen = false
//            seenNotSeenButton.titleLabel?.text = "Not Seen"
//        } else {
//            createdMovie?.seen = true
//            seenNotSeenButton.titleLabel?.text = "Seen"
//        }
        
//        createdMovie?.seen = createdMovie?.seen == true ? false : true
        
        delegate?.seenButtonTapped(cell: self)
        
    }
    
    private func updateViews() {
        if let movie = createdMovie {
            movieNameLabel.text = movie.name
            
//            seenNotSeenButton.titleLabel?.text = movie.seen == true ? "Seen" : "Not Seen"
        }
    }
    

}
