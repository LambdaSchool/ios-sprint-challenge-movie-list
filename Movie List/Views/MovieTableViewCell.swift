//
//  MovieTableViewCell.swift
//  Movie List
//
//  Created by Shawn Gee on 2/21/20.
//  Copyright © 2020 Lambda School. All rights reserved.
//

import UIKit

class MovieTableViewCell: UITableViewCell {
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var seenButton: UIButton!
    
    @IBAction func seenButtonTapped(_ sender: Any) {
        movie?.hasBeenSeen.toggle()
        updateSeenButton()
    }
    
    var movie: Movie? {
        didSet {
            guard let movie = movie else { return }
            nameLabel.text = movie.name
            updateSeenButton()
        }
    }
    
    func updateSeenButton() {
        guard let movie = movie else { return }
        let title = movie.hasBeenSeen ? "Seen" : "Unseen"
        seenButton.setTitle(title, for: .normal)
    }
}
