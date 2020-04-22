//
//  MovieTableViewCell.swift
//  Movie List
//
//  Created by Sammy Alvarado on 4/18/20.
//  Copyright © 2020 Lambda School. All rights reserved.
//

import UIKit

class MovieTableViewCell: UITableViewCell {

    @IBOutlet weak var movieNameLabel: UILabel!
    
    @IBOutlet weak var seenButton: UIButton!
    @IBOutlet weak var notSeenButton: UIButton!
    
    @IBAction func notSeenButtonAction(_ sender: Any) {
      if seenButton.isSelected == true {
        seenButton.isHidden = false
      } else if seenButton.isSelected == false {
          seenButton.isHidden = true
      }
        
    }
    
    @IBAction func seenButtonAction(_ sender: Any) {
        if notSeenButton.isSelected == true {
               notSeenButton.isHidden = false
             } else if notSeenButton.isSelected == false {
                 notSeenButton.isHidden = true
        }
    }
    
    
    
    var movies: Movie? {
        didSet {
            updateViews()
        }
    }
    
    private func updateViews() {
        guard let movie = self.movies else { return }
        

    
        movieNameLabel.text = movie.movieName
    
    }
}
