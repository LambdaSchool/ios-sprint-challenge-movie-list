//
//  movieViewCell.swift
//  Movie List
//
//  Created by Osha Washington on 11/22/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import UIKit

class movieViewCell: UITableViewCell {

    
    class MovieTableViewCell: UITableViewCell {
        @IBOutlet weak var movieLabel: UILabel!
        @IBOutlet weak var seenButton: UIButton!
        @IBAction func seenButtonTapped(_ sender: UIButton) {
            movie?.seen.toggle()
        }
        
        var movie: Movie? {
            didSet {
                updateViews()
            }
        }
        
        private func updateViews() {
            guard let movie = movie else { return }
            
            movieLabel.text = movie.movie
            seenButton.setTitle(movie.seen ? "Seen" : "Not Seen", for: .normal)
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

}
