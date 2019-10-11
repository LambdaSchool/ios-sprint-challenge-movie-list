//
//  MovieTableViewCell.swift
//  Movie List
//
//  Created by Lambda_School_Loaner_204 on 10/11/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import UIKit

class MovieTableViewCell: UITableViewCell {

    @IBOutlet weak var movieLabel: UILabel!
    @IBOutlet weak var hasSeenButton: UIButton!
    
    var movie: Movie? {
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
    
    @IBAction func hasSeenMovieTapped(_ sender: UIButton) {
        
        if let hasSeenMovie = movie?.hasSeen {
            if (hasSeenMovie) {
                movie?.hasSeen = false
                sender.setTitle("Not Seen", for: .normal)
            } else {
                movie?.hasSeen = true
                sender.setTitle("Seen", for: .normal)
            }
        }
    }
    
    private func updateViews() {
        guard let movie = movie else { return }
        
        movieLabel.text = movie.name
        if (movie.hasSeen) {
            hasSeenButton.setTitle("Seen", for: .normal)
        } else {
            hasSeenButton.setTitle("Not Seen", for: .normal)
        }
        
    }

}
