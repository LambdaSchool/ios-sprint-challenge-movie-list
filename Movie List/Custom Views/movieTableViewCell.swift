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
    
    
    var movie: Movie? {
        didSet {
            updateViews()
        }
    }
    
    @IBAction func hasSeenButton(_ sender: UIButton) {
        sender.setTitle("Seen", for: .selected)
        sender.setTitle("Unseen", for: .normal)
        
        
    }
    
    private func updateViews() {
        guard let movie = movie else {return}
        
        movieNameLabel.text = movie.name
        
    }
}
