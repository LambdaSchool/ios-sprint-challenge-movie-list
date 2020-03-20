//
//  MovieViewCell.swift
//  Movie List
//
//  Created by Cody Morley on 3/20/20.
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
          movie?.haveSeen = true
        } else {
          seenButton.setTitle("unseen", for: .normal)
           movie?.haveSeen = false
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
