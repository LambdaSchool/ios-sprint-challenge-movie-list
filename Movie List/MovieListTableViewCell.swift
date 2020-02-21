//
//  MovieListTableViewCell.swift
//  Movie List
//
//  Created by Lydia Zhang on 2/21/20.
//  Copyright © 2020 Lambda School. All rights reserved.
//

import UIKit

class MovieListTableViewCell: UITableViewCell {
    var movie: Movie? {
        didSet {
            updateMovie()
        }
    }
    
    @IBOutlet weak var movieNameLabel: UILabel!
    @IBOutlet weak var isSeenButton: UIButton!
    
    func updateMovie() {
        guard let movie = movie else {
            return
        }
        movieNameLabel.text = movie.name
    }
    
    @IBAction func isSeenTapped(_ sender: Any) {
        if self.movie?.isSeen == false {
            self.movie?.isSeen = true
            isSeenButton.setTitle("seen", for: .normal)
        } else {
            self.movie?.isSeen = false
            isSeenButton.setTitle("not seen", for: .normal)
        }
    }
    
    @IBAction func add(_ sender: Any) {
    }
}
