//
//  MovieTableViewCell.swift
//  Movie List
//
//  Created by Hunter Oppel on 3/20/20.
//  Copyright © 2020 Lambda School. All rights reserved.
//

import UIKit

class MovieTableViewCell: UITableViewCell {
    
    var movie: Movie? {
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

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    @IBAction func seenButtonTapped(_ sender: Any) {
        guard var movie = movie else { return }
        movie.seen = !movie.seen
    }
    
    private func updateViews() {
        guard let movie = movie else { return }
        
        movieLabel.text = movie.name
        if movie.seen {
            seenButton.setTitle("Seen", for: .normal)
        } else {
            seenButton.setTitle("Not Seen", for: .normal)
        }
    }

}
