//
//  MovieTableViewCell.swift
//  Movie List
//
//  Created by Aaron on 8/2/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import UIKit

class MovieTableViewCell: UITableViewCell {
    
    @IBOutlet weak var movieTitleLabel: UILabel!
    @IBOutlet weak var movieStatusButton: UIButton!
    
    var movie: Movie? {
        didSet {
            updateValues()
        }
    }
    
    func toggleAction(sender: UIButton)  {
        sender.isSelected = !sender.isSelected
        if sender.isSelected {
            movieStatusButton.setTitle("Seen", for: .normal)
        } else {
        movieStatusButton.setTitle("Unseen", for: .normal)
        }
    }
    
    
    private func updateValues() {
        guard let movie = movie else { return }
        movieTitleLabel.text = movie.name
    }
    
    
    
    @IBAction func statusTogglePressed(_ sender: Any) {
            toggleAction(sender: movieStatusButton)
        
    }
    
    

}
