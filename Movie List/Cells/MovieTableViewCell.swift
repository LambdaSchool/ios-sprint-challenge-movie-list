//
//  MovieTableViewCell.swift
//  Movie List
//
//  Created by Waseem Idelbi on 12/4/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import UIKit

class MovieTableViewCell: UITableViewCell {


    @IBOutlet var movieTitleLabel: UILabel!
    
    @IBOutlet var seenButton: UIButton!
    
    @IBAction func seenButtonTapped(_ sender: UIButton) {
    
    }
    
    var movie: Movie? {
        didSet {
            self.updateViews()
        }
    }
    
    private func updateViews() {
        guard let movie = movie else {return}
        movieTitleLabel.text = movie.title
        
    }
}

