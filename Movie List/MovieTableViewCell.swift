//
//  MovieTableViewCell.swift
//  Movie List
//
//  Created by Keri Levesque on 1/24/20.
//  Copyright © 2020 Lambda School. All rights reserved.
//

import UIKit

class MovieTableViewCell: UITableViewCell {

    
    @IBOutlet weak var movieTitleLabel: UILabel!
    
    @IBOutlet weak var notSeenButton: UIButton!
    
    var movie: Movie? {
        didSet {
            updateViews()
        }
    }
    
   private func updateViews() {
        guard let movie = movie else { return }
        movieTitleLabel.text = movie.name
    }
   
    
     @IBAction func notSeenButton(_ sender: UIButton) {
        movie?.watched.toggle()
        if movie?.watched == true {
            sender.setTitle("Seen", for: .normal)
        } else {
            sender.setTitle("Not Seen", for: .normal)
        }
    }
    
    
    
}
