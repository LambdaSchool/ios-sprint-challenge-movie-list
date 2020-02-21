//
//  MovieListTableViewCell.swift
//  Movie List
//
//  Created by Nichole Davidson on 2/21/20.
//  Copyright © 2020 Lambda School. All rights reserved.
//

import UIKit

class MovieListTableViewCell: UITableViewCell {

    @IBOutlet weak var movieTitleLabel: UILabel!
    @IBOutlet weak var seenButton: UIButton!
    
    var movie: Movie? {
        
        didSet {
            updateViews()
        }
    }
    
    private func updateViews() {
        guard let movie = movie else { return }
        
        movieTitleLabel.text = movie.name
        if seenButton != nil {
            movie.seen = true
        }
    }
    
    @IBAction func seenButtonTapped(_ sender: UIButton) {
        
        if let movie = movie {
            if movie.seen == true {
            seenButton.setTitle("Seen", for: .normal)
            seenButton.setTitleColor(UIColor.systemGreen, for: .normal)
        }
      }
   }
}


