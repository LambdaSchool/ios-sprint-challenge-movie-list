//
//  MovieTableViewCell.swift
//  Movie List
//
//  Created by Malik Barnes on 12/13/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import UIKit

class MovieTableViewCell: UITableViewCell {

    
    @IBOutlet weak var movieTitleLabel: UILabel!
    @IBOutlet weak var seenButton: UISegmentedControl!
    
    @IBAction func seenButtonTapped(_ sender: Any) {
        seenButton.isSelected.toggle()
    }
    
    var movie: Movie? {
          // Property Observer - Calls the code in the { } whenever the value of friend is set
          didSet {
              updateViews()
          }
      }
    
    func updateViews() {
        movieTitleLabel.text = movie?.name
    }
}
