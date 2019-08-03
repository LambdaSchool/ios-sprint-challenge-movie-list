//
//  MovieTableViewCell.swift
//  Movie List
//
//  Created by Lambda_School_Loaner_141 on 8/2/19.
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
        if movie.seen == false {
            seenButton.titleLabel?.text = "Not Seen"
        }
        else if movie.seen == true {
                seenButton.titleLabel?.text = "Seen"
        }
    }
}
