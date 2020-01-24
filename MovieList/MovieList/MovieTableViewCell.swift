//
//  MovieTableViewCell.swift
//  MovieList
//
//  Created by brian vilchez on 7/19/19.
//  Copyright © 2019 brian vilchez. All rights reserved.
//

import UIKit

class MovieTableViewCell: UITableViewCell {

    @IBOutlet var seenOrNotSeenButton: UIButton!
    
   @IBOutlet var MovieNameLabel: UILabel!
    
    var movie: Movie? {
        didSet {
            updateViews()
        }
    }

    @IBAction func hasSeenButton(sender: UIButton) {
        if seenOrNotSeenButton.isSelected != false {
            seenOrNotSeenButton.titleLabel?.text = "Seen"
        } else {
            seenOrNotSeenButton.titleLabel?.text = "Not Seen"
        }
    }
    
    
    func updateViews() {
        guard let movie = movie else {return}
        MovieNameLabel.text = movie.Name
      //  seenOrNotSeenButton.titleLabel?.text = "Not Seen"
    }
}
