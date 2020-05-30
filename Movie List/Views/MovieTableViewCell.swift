//
//  MovieTableViewCell.swift
//  Movie List
//
//  Created by Cora Jacobson on 5/30/20.
//  Copyright © 2020 Lambda School. All rights reserved.
//

import UIKit

class MovieTableViewCell: UITableViewCell {

    @IBOutlet weak var movieLabel: UILabel!
    @IBOutlet weak var seenButton: UIButton!
    
    @IBAction func seenButton(_ sender: Any) {
        if seenButton.titleLabel?.text == "Not Seen" {
            movie?.seen = true
            seenButton.setTitle("Seen", for: .normal)
        } else {
            movie?.seen = false
            seenButton.setTitle("Not Seen", for: .normal)
        }
    }
    
    var movie: Movie? {
        didSet {
            updateViews()
        }
    }
    
    private func updateViews() {
        guard let movie = movie else { return }
        movieLabel.text = movie.name
        if movie.seen == true {
            seenButton.setTitle("Seen", for: .normal)
        } else {
            seenButton.setTitle("Not Seen", for: .normal)
        }
    }

}
