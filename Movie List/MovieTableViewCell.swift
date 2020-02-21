//
//  MovieTableViewCell.swift
//  Movie List
//
//  Created by Wyatt Harrell on 2/21/20.
//  Copyright © 2020 Lambda School. All rights reserved.
//

import UIKit

protocol hasSeenButtonDelegate {
    func hasSeenButtonTapped(index: Int)
}

class MovieTableViewCell: UITableViewCell {

    @IBOutlet weak var movieTitleLabel: UILabel!
    @IBOutlet weak var hasSeenButton: UIButton!
    
    var movie: Movie? {
        didSet {
            updateViews()
        }
    }
    
    var delegate: hasSeenButtonDelegate?
    var index: IndexPath?
    
    func updateViews() {
        guard let movie = movie else { return }
        
        movieTitleLabel.text = movie.name
        
        if movie.hasSeen {
            hasSeenButton.isSelected = true
        } else {
            hasSeenButton.isSelected = false
        }
    }
    
    @IBAction func hasSeenButtonTapped(_ sender: Any) {
        
        guard let index1 = index else { return }
        delegate?.hasSeenButtonTapped(index: index1.row)
        
        if hasSeenButton.isSelected {
            hasSeenButton.isSelected = false
        } else {
            hasSeenButton.isSelected = true
        }
        
    }
    
    
}
