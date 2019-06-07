//
//  MovieTableViewCell.swift
//  Movie List
//
//  Created by Alex Shillingford on 6/7/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import UIKit

class MovieTableViewCell: UITableViewCell {
    
    @IBOutlet weak var movieLabel: UILabel!
    @IBOutlet weak var seenButton: UIButton!
    
    var movie: Movie?
    
    @IBAction func notSeenButtonTapped(_ sender: Any) {
        if let unwrappedMovie = movie {
            let seenStatus = unwrappedMovie.isSeen ? "Not Seen" : "Seen"
            
            seenButton.setTitle(seenStatus, for: .normal)
        }
    }
    
}
