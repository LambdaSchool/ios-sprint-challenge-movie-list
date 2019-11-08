//
//  SeenStatusTableViewCell.swift
//  Movie List
//
//  Created by Tobi Kuyoro on 08/11/2019.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import UIKit

class SeenStatusTableViewCell: UITableViewCell {

    @IBOutlet weak var movieLabel: UILabel!
    @IBOutlet weak var hasBeenSeenLabel: UIButton!
    
    var movie: Movie? {
        didSet {
            updateViews()
        }
    }
    
    func updateViews() {
        guard let movie = movie else { return }
        
        movieLabel.text = movie.name
    }
    
    @IBAction func hasBeenSeenTapped(_ sender: Any) {
        hasBeenSeenLabel.titleLabel?.text = "Seen"
        hasBeenSeenLabel.titleLabel?.text = "Not Seen"
    }
}

