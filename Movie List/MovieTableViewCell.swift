//
//  MovieTableViewCell.swift
//  Movie List
//
//  Created by Kennedy Samarakody on 11/22/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import UIKit

class MovieTableViewCell: UITableViewCell {
    
    @IBAction func seenOrNotSeenButton(_ sender: Any) {
    }
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    @IBOutlet weak var movieLabel: UILabel!
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    var movie: Movie? {
        didSet {
            updateViews()
        }
    }
    
     private func updateViews() {
            guard let movie = movie else { return }
        movieLabel.text = movie.name
        
            
            
        }
    }


