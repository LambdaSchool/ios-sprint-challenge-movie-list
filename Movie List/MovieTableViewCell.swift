//
//  MovieTableViewCell.swift
//  Movie List
//
//  Created by Christy Hicks on 9/29/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import UIKit

class MovieTableViewCell: UITableViewCell {

    @IBOutlet weak var movieLabel: UILabel!
    
    @IBOutlet weak var seenButton: UIButton!
    
    @IBAction func seenButtonToggle(_ sender: UIButton) {
    }
    
    var movie: Movie? {
            didSet {
                updateViews()
            }
        }

        private func updateViews() {
               guard let movie = movie else { return }
               
            movieLabel.text = movie.title
            if movie.isSeen == true {
                seenButton.titleLabel?.text = "Seen"
            } else {
                seenButton.titleLabel?.text = "Not seen"
               
        }
        
    }}
