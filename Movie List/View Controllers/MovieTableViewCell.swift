//
//  MovieTableViewCell.swift
//  Movie List
//
//  Created by Jordan Christensen on 8/16/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import UIKit

class MovieTableViewCell: UITableViewCell {
    
    @IBOutlet weak var movieLabel: UILabel!
    @IBOutlet weak var seenLabel: UILabel!
    
    var movie: Movie? {
        didSet{
            updateViews()
        }
    }
    
    func updateViews() {
        guard let movie = movie else { return }
        movieLabel.text = movie.name
        if (movie.hasSeen) {
            seenLabel.text = "Seen"
        } else {
            seenLabel.text = "Not Seen"
        }
    }

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        if (selected) {
            guard let movie = movie else { return }
            movie.hasSeen = !movie.hasSeen
            if (movie.hasSeen) {
                seenLabel.text = "Seen"
            } else {
                seenLabel.text = "Not Seen"
            }
        }
    }

}
