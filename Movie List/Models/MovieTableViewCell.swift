//
//  MovieTableViewCell.swift
//  Movie List
//
//  Created by Jessie Ann Griffin on 8/4/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import UIKit

class MovieTableViewCell: UITableViewCell {

    @IBOutlet weak var movieTitleLabel: UILabel!
    @IBOutlet weak var isSeenButton: UIButton!
    
    var movie: Movie? {
        didSet {
            updateViews()
        }
    }
    
    private func updateViews() {
        guard let movie = movie else { return }
        
        movieTitleLabel.text = movie.name
        
    }
    
    @IBAction func isSeenTapped(_ sender: Any) {
            
        guard let isSeenButton = sender as? UIButton else { return }
        isSeenButton.setTitle("Seen", for: .selected)
    }
}
