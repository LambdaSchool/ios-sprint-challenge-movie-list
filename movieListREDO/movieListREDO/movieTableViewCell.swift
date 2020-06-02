//
//  movieTableViewCell.swift
//  movieListREDO
//
//  Created by B$hady on 5/31/20.
//  Copyright © 2020 Lambda School. All rights reserved.
//

import UIKit

class movieTableViewCell: UITableViewCell {
  
    
    @IBOutlet weak var movieLabel: UILabel!
    
    @IBOutlet weak var seenButton: UIButton!
    
    @IBAction func seenToggleButton(_ sender: Any) {
        movie?.seen.toggle()
       
    }
    var movie: Movie? {
        didSet {
            updateViews()
        }
    }
    
    private func updateViews() {
        guard let movie = movie else { return }
        movieLabel.text = movie.title
        if movie.seen == true {
            seenButton.setTitle("Seen", for: .normal)
        } else {
            seenButton.setTitle("Unseen", for: .normal)
        }
    }
}



