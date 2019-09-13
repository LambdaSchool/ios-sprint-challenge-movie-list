//
//  MovieTableViewCell.swift
//  Movie List
//
//  Created by Gi Pyo Kim on 9/13/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import UIKit

class MovieTableViewCell: UITableViewCell {
    
    @IBOutlet weak var movieNameLabel: UILabel!
    @IBOutlet weak var hasBeenSeenButton: UIButton!
    var hasBeenSeen = false
    
    var movie: Movie? {
        didSet {
            updateViews()
        }
    }

    @IBAction func hasBeenSeenTabbed(_ sender: UIButton) {
        hasBeenSeen ? sender.setTitle("Not Seen", for: .normal) : sender.setTitle("Seen", for: .normal)
        hasBeenSeen = !hasBeenSeen
    }
    
    private func updateViews(){
        guard let movie = movie else { return }
        
        movieNameLabel.text = movie.name
    }
}
