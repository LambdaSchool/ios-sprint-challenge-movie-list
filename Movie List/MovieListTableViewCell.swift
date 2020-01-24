//
//  SeenMovieTableViewCell.swift
//  Movie List
//
//  Created by John Thomas on 1/24/20.
//  Copyright © 2020 Lambda School. All rights reserved.
//

import UIKit

class MovieListTableViewCell: UITableViewCell {

    @IBOutlet weak var movieTitleLabel: UILabel!
    
    @IBOutlet weak var seenButtonVar: UIButton!
    var isChecked = true
    
    @IBAction func seenButtonPressed(_ sender: UIButton) {
        isChecked = !isChecked
        if isChecked {
            sender.setTitle("Seen", for: .normal)
            movie?.seen = true
        } else {
            sender.setTitle("Not seen", for: .normal)
            movie?.seen = false
            }
        }
    
    var movie: Movie? {
        didSet {
                updateViews()
            }
        }
    
    private func updateViews() {
          if let unwrappedMovie = movie {
            movieTitleLabel.text = unwrappedMovie.name
          }
      }
    
}

