//
//  MovieTableViewCell.swift
//  Movie List
//
//  Created by Isaac Lyons on 9/13/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import UIKit

class MovieTableViewCell: UITableViewCell {

    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var seenButton: UIButton!
    
    var movie: Movie? {
        didSet {
            updateViews()
        }
    }
    
    private func updateViews() {
        guard let movie = movie else { return }
        
        nameLabel.text = movie.name
        seenButton.setTitle("\(movie.seen ? "" : "Not ")Seen", for: .normal)
    }

    @IBAction func seenButtonTapped(_ sender: UIButton) {
        movie?.seen.toggle()
        updateViews()
    }
}
