//
//  MovieTableViewCell.swift
//  Movie List
//
//  Created by morse on 10/11/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import UIKit

class MovieTableViewCell: UITableViewCell {
    
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var watchedButton: UIButton!
    
    var movie: Movie? {
        didSet {
            updateViews()
        }
    }
    
    private func updateViews() {
        guard let movie = movie else { return }
        
        nameLabel.text = movie.name
        watchedButton.setTitle("Watched?", for: .normal)
    }

}
