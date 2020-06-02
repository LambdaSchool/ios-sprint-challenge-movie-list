//
//  MovieTableViewCell.swift
//  Movie List
//
//  Created by Eugene White on 5/30/20.
//  Copyright © 2020 Lambda School. All rights reserved.
//

import UIKit

class MovieTableViewCell: UITableViewCell {
    @IBOutlet weak var seenButton: UIButton!
    var movie: Movie?{
        didSet{
            updateViews()
        }
    }
    
   private func updateViews() {
        guard let unwrappedMovie = movie else {return}
        MovieLabel.text = unwrappedMovie.movieName
        if unwrappedMovie.seen == true {
            seenButton.setTitle("Seen", for: .normal)
        } else { seenButton.setTitle("Not Seen", for: .normal)
        }
    }
    @IBOutlet weak var MovieLabel:
    
    UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}

