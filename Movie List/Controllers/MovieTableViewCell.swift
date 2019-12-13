//
//  MovieTableViewCell.swift
//  Movie List
//
//  Created by Tobi Kuyoro on 13/12/2019.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import UIKit

class MovieTableViewCell: UITableViewCell {

    @IBOutlet weak var movieTitleLabel: UILabel!
    @IBOutlet weak var hasBeenSeen: UIButton!
    
    var movie: Movie? {
        didSet {
            updateViews()
        }
    }
    
    @IBAction func hasBeenSeenTapped(_ sender: Any) {
        if let movie = movie {
            movie.hasBeenSeen.toggle()
            updateViews()
        }
    }

    func updateViews() {
        if let movie = movie {
            movieTitleLabel.text = movie.name
            
            if movie.hasBeenSeen == false {
                hasBeenSeen.setTitle("Not Seen", for: .normal)
            } else {
                hasBeenSeen.setTitle("Seen", for: .normal)
            }
        }
    }
}
