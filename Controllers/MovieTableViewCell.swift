//
//  MovieTableViewCell.swift
//  Movie List
//
//  Created by Michael Self on 4/17/20.
//  Copyright © 2020 Lambda School. All rights reserved.
//

import UIKit

class MovieViewCell: UITableViewCell {

    
    @IBOutlet weak var movieLabel: UILabel!
    @IBOutlet weak var seenButton: UIButton!
    
    var movie: Movie?
    
    @IBAction func seenTapped(_ sender: Any) {
        if seenButton.currentTitle == "unseen" {
          seenButton.setTitle("seen", for: .normal)
          movie?.seenMovie = true
        } else {
          seenButton.setTitle("unseen", for: .normal)
           movie?.seenMovie = false
        }
    }
    override func awakeFromNib() {
        super.awakeFromNib()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }

}
