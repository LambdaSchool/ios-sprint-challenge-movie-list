//
//  movieTableViewCell.swift
//  Movie List
//
//  Created by Alex Rhodes on 7/19/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import UIKit

class movieTableViewCell: UITableViewCell {
    
    @IBOutlet weak var movieNameLabel: UILabel!
    
    @IBAction func hasSeenButton(_ sender: UIButton) {
        if movie?.hasSeen == false {
            textLabel?.text = "Unseen"
        } else {
            textLabel?.text = "Seen"
        }
    }
    
    var movie: Movie? {
        didSet {
            updateViews()
        }
    }
    
    private func updateViews() {
        guard let movie = movie else {return}
        
        movieNameLabel.text = movie.name
        
    }
}
