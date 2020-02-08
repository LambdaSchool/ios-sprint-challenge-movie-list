//
//  File.swift
//  Movie List
//
//  Created by J-Skenandore on 9/30/19.
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
    
    private func updateViews() {
        guard let movie = movie else { return }
        
        nameLabel.text = movie.name
    }
    
    @IBAction func seenButtonTapped(_ sender: Any) {
        if movie?.seen == false {
            seenButton.setTitle("Not Seen", for: .normal)
            movie?.seen = true
        } else {
            seenButton.setTitle("Seen", for: .normal)
            movie?.seen = false
        }
    }
}


