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
        guard let movie = movie else { return }
        if movie.isSeen == true {
            seenButton.setTitle("Not Seen", for: .normal)
            self.movie!.isSeen = false
        } else {
            seenButton.setTitle("Seen", for: .normal)
            self.movie!.isSeen = true
        }
    }
    
    var movie: Movie? {
            didSet {
                updateViews()
            }
        }

        func updateViews() {
               guard let movie = movie else { return }
            movieLabel.text = movie.title
        }
        
    
        
}
