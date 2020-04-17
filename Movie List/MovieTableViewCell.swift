//
//  MovieTableViewCell.swift
//  Movie List
//
//  Created by Enzo Jimenez-Soto on 4/17/20.
//  Copyright © 2020 Lambda School. All rights reserved.
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

}
