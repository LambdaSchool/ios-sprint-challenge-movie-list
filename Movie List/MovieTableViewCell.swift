//
//  MovieTableViewCell.swift
//  Movie List
//
//  Created by Kobe McKee on 4/26/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import UIKit

class MovieTableViewCell: UITableViewCell {
    var movieController: MovieController?
    
    private func updateViews() {
        guard let movie = movie else { return }
        movieTitleLabel.text = movie.title
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }


    @IBAction func seenOrNotButtonPressed(_ sender: Any) {
    }
    @IBOutlet weak var movieTitleLabel: UILabel!
    
    var movie: Movie? {
        didSet {
            updateViews()
        }
    }
    
    
}
