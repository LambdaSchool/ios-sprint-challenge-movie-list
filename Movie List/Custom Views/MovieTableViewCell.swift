//
//  MovieTableViewCell.swift
//  Movie List
//
//  Created by Fabiola S on 8/2/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import UIKit

class MovieTableViewCell: UITableViewCell {
    
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
        seenButton.titleLabel?.text = "Not Seen"
    }
    
    
    @IBAction func seenButton(_ sender: UIButton) {
        if movie?.haveSeen == false {
            seenButton.titleLabel?.text = "Seen"
        }
    }
    

}
