//
//  MovieNotSeenTableViewCell.swift
//  Movie List
//
//  Created by Nichole Davidson on 1/24/20.
//  Copyright © 2020 Lambda School. All rights reserved.
//

import UIKit

protocol SeenButtonDelegate {
    
    func seenButtonTapped(cell: UITableViewCell)
}



class MovieNotSeenTableViewCell: UITableViewCell {
    
    
    @IBOutlet weak var movieOnListLabel: UILabel!
    @IBOutlet weak var seenButton: UIButton!

    @IBAction func seenButtonTapped(_ sender: UIButton) {
        
        delegate?.seenButtonTapped(cell: self)
        
    }
    
    
    
    var delegate: SeenButtonDelegate?
    
    var movie: Movie? {
        didSet {
            updateViews()
        }
    }
    
    private func updateViews() {
        guard let movie = movie  else { return }
        
        movieOnListLabel.text = movie.name
        
        if movie.seen == true {
            seenButton.setTitle("Seen", for: [])
        } else {
            seenButton.setTitle("Not Seen", for: [])
        }
        
        
        
    }
    
}
