//
//  MovieTableViewCell.swift
//  Movie List
//
//  Created by Samuel Esserman on 2/21/20.
//  Copyright © 2020 Lambda School. All rights reserved.
//

import UIKit

class MovieTableViewCell: UITableViewCell {
    @IBOutlet weak var movieTitleLabel: UILabel!
    @IBOutlet weak var seenButtonLabel: UIButton!
    
    var movie: Movie? {
        didSet {
            updateViews()
        }
    }
    
    func updateViews() {
        if let unwrappedMovie = movie {
            movieTitleLabel.text = unwrappedMovie.name
            seenButtonLabel.titleLabel?.text = unwrappedMovie.seen ? "Seen" : "Not Seen"
        } 
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    @IBAction func seenButtonTapped(_ sender: UIButton) {
        movie?.seen = !movie!.seen
        sender.setTitle(movie!.seen ? "Seen" : "Not Seen", for: .normal)
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
