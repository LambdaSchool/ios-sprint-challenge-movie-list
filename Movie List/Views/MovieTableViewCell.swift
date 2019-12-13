//
//  MovieTableViewCell.swift
//  Movie List
//
//  Created by Aaron Cleveland on 12/13/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import UIKit

class MovieTableViewCell: UITableViewCell {
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var hasSeenButton: UIButton!
    
    var movie: Movie? {
        didSet {
            updateViews()
        }
    }
    
    @IBAction func seenButtonTapped(_ sender: Any) {
        movie?.hasSeen.toggle()
        updateViews()
    }
    
    func updateViews() {
        if let movie = movie {
            nameLabel.text = movie.name
            if movie.hasSeen == true {
                hasSeenButton.setTitle("Seen", for: .normal)
            } else {
                hasSeenButton.setTitle("Not Seen", for: .normal)
            }
        }
    }
    
}
