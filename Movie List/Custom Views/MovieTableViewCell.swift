//
//  MovieTableViewCell.swift
//  Movie List
//
//  Created by John McCants on 5/29/20.
//  Copyright © 2020 Lambda School. All rights reserved.
//

import UIKit

class MovieTableViewCell: UITableViewCell {

    var movie : Movie? {
        didSet {
            updateViews()
        }
    }
    @IBOutlet weak var movieLabel: UILabel!
    @IBOutlet weak var seenButton: UIButton!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    @IBAction func seenTapped(_ sender: UIButton) {
        if var unwrappedSenderTitle = sender.titleLabel?.text {
            if unwrappedSenderTitle == "Seen" {
                unwrappedSenderTitle = "Unseen"
                movie?.seen = false
            } else {
                unwrappedSenderTitle = "Seen"
                movie?.seen = true
            }
        }
    }
    private func updateViews() {
        guard let unwrappedMovie = movie else {
            return
        }
        movieLabel.text = unwrappedMovie.moviesName
        
        if unwrappedMovie.seen == true {
            seenButton.setTitle("Seen", for: .normal)
        } else {
            seenButton.setTitle("Not Seen", for: .normal)
        }
        
        
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
