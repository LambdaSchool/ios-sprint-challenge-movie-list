//
//  MovieTableViewCell.swift
//  Movie List
//
//  Created by Jorge Alvarez on 12/13/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import UIKit

class MovieTableViewCell: UITableViewCell {
    
    @IBOutlet weak var nameLabel: UILabel!
    
    @IBOutlet weak var seenButton: UIButton!
    
    var movie: Movie? {
        didSet {
            updateViews()
        }
    }
    
    @IBAction func seenButtonTapped(_ sender: Any) {
        print("seenButtonTapped was tapped")
        movie?.seen.toggle()
        updateViews()
    }
    
    func updateViews() {
        if let movie = movie {
            nameLabel.text = movie.name
            if movie.seen {
                seenButton.setTitle("Seen", for: .normal)
            }
            else {
                seenButton.setTitle("Unseen", for: .normal)
            }
        }
    }

    // identifier is called MovieTableViewCell

}
