//
//  MovieTableViewCell.swift
//  Movie List
//
//  Created by Ciara Beitel on 8/16/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import UIKit

class MovieTableViewCell: UITableViewCell {
    
    var movie: Movie? {
        didSet {
            updateViews()
        }
    }
    
    @IBOutlet weak var movieTitleLabel: UILabel!
    
    @IBOutlet weak var seenOrNotLabel: UILabel!
    
    @IBAction func seenOrNotButtonTapped(_ sender: Any) {
        
        if var unwrappedMovie = movie {
            unwrappedMovie.seen.toggle()
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
        guard let movie = movie else { return }
        movieTitleLabel.text = movie.title
    }

}
