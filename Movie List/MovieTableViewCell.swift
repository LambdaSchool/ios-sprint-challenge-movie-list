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
    
    var isSeen: Bool = false
    var movie: Movie?
    
    @IBAction func notSeenButtonTapped(_ sender: Any) {
        isSeen.toggle()
        seenButton.setTitle(isSeen ? "Not Seen" : "Seen", for: .normal)
    }
    
}
