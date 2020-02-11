//
//  MovieCell.swift
//  MovieList
//
//  Created by Waseem Idelbi on 2/9/20.
//  Copyright © 2020 Waseem Idelbi. All rights reserved.
//

import UIKit

protocol MovieSeenDelegate: AnyObject {
    func updateSeenProperty(movie: Movie)
}

class MovieCell: UITableViewCell {
    
    @IBOutlet var movieName: UILabel!
    @IBOutlet var seenButton: UIButton!
    weak var delegate: MovieSeenDelegate?
    
    var movie: Movie? {
        didSet {
            updateViews()
        }
    }
    
    func updateViews() {
        guard let movie = movie else {return}
        movieName.text = movie.name
        movie.seen ? seenButton.setTitle("Seen", for: .normal) : seenButton.setTitle("Not Seen", for: .normal)
    }
    
    @IBAction func seenButtonTapped(_ sender: Any) {
        guard let movie = movie else {return}
        delegate?.updateSeenProperty(movie: movie)
    }
    
}
