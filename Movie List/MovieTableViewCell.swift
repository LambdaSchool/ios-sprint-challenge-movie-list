//
//  MovieTableViewCell.swift
//  Movie List
//
//  Created by Eugene White on 5/30/20.
//  Copyright © 2020 Lambda School. All rights reserved.
//

import UIKit

class MovieTableViewCell: UITableViewCell {
    
    
    @IBOutlet weak var movieLabel: UILabel!
    
    @IBOutlet weak var seenbutton: UIButton!
    
    
    var movie: Movie?{
        didSet{
            updateViews()
        }
    }
    
    private func updateViews() {
        guard let unwrappedMovie = movie else {return}
        movieLabel.text = unwrappedMovie.movieName
        if unwrappedMovie.seen == true {
            seenbutton.setTitle("Seen", for: .normal)
        } else { seenbutton.setTitle("Not Seen", for: .normal)
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

