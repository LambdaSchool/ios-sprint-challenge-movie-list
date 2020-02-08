//
//  MovieTableViewCell.swift
//  Movie List
//
//  Created by Claudia Contreras on 2/7/20.
//  Copyright © 2020 Lambda School. All rights reserved.
//

import UIKit

class MovieTableViewCell: UITableViewCell {
    
    //IBOutlets
    @IBOutlet var movieTitleLabel: UILabel!
    @IBOutlet var seenButton: UIButton!
    
    //make a reference to our Movie object and call the updateview function
    var movie: Movie? {
        didSet {
            self.updateViews()
        }
    }
    
    private func updateViews() {
        guard let movie = movie else {return}
        
        //use our friend object to fill in the data
        movieTitleLabel.text = movie.name
        //seenButton.titleLabel = movie.
    }

    //IBAction
    @IBAction func seenButtonTapped(_ sender: Any) {
    }
    

}
