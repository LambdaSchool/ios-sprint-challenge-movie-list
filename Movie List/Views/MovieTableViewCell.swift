//
//  MovieTableViewCell.swift
//  Movie List
//
//  Created by Jon Bash on 2019-10-11.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import UIKit

class MovieTableViewCell: UITableViewCell {
    
    var movie: Movie? {
        didSet {
            updateViews()
        }
    }
    
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var seenButton: UIButton!
    
    @IBAction func seenButtonTapped(_ sender: Any) {
        if let movie = movie {
            movie.seen.toggle()
        }
        updateViews()
    }
    
    func updateViews() {
        guard let movie = movie else { return }
        
        titleLabel.text = movie.title
        var seenText: String {
            if movie.seen {
                return "Seen"
            } else {
                return "Not seen"
            }
        }
        seenButton.setTitle(seenText, for: .normal)
    }
}
