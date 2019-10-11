//
//  MovieTableViewCell.swift
//  Movie List
//
//  Created by Jon Bash on 2019-10-11.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import UIKit

class MovieTableViewCell: UITableViewCell {
    
    var movie: Movie?
    
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var seenButton: UIButton!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        titleLabel.text = movie?.title
        seenButton.titleLabel?.text = {
            guard let movie = movie else { return "" }
            if movie.seen {
                return "Seen"
            } else {
                return "Not seen"
            }
        }()
    }
    
    @IBAction func seenButtonPressed(_ sender: UIButton) {
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
