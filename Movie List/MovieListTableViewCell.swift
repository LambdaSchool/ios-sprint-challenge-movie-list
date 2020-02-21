//
//  MovieListTableViewCell.swift
//  Movie List
//
//  Created by Gregory Omoma on 2/21/20.
//  Copyright © 2020 Lambda School. All rights reserved.
//

import UIKit

class MovieListTableViewCell: UITableViewCell {

   @IBOutlet weak var movieLabel: UILabel!
    
    var movie: Movie {
        didSet {
            updateViews()
        }
    }
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    private func updateViews() {
        if let movie = movie {
            movieLabel.text = movie.movieName
        }
    }
}
