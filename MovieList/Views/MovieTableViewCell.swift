//
//  MovieTableViewCell.swift
//  Movie List
//
//  Created by Gladymir Philippe on 5/31/20.
//  Copyright © 2020 Lambda School. All rights reserved.
//

import UIKit

class MovieTableViewCell: UITableViewCell {
    @IBOutlet weak var movieNameLabel: UILabel!
    @IBOutlet weak var seenButton: UIButton!
    
    var movie: Movie? {
        didSet {
            self.updateViews()
        }
    }
    
    private func updateViews() {
        guard let movie = movie else {
            return
        }
        movieNameLabel.text = movie.name
    }
    
 //   override func awakeFromNib() {
//        super.awakeFromNib()
        // Initialization code
//    }
    @IBAction func seenButtonTapped(_ sender: Any) {
        if movie?.seen == false {
            seenButton.setTitle("Not Seen", for: .normal)
            movie?.seen = true
        } else {
            seenButton.setTitle("Seen", for: .normal)
            movie?.seen = false
        }
    }
    
  //  override func setSelected(_ selected: Bool, animated: Bool) {
 //       super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
 //   }

}
