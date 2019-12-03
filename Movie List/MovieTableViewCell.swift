//
//  MovieTableViewCell.swift
//  Movie List
//
//  Created by Morgan Smith on 11/22/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import UIKit

class MovieTableViewCell: UITableViewCell {
    
    @IBOutlet weak var movieLabel: UILabel!
    
    @IBOutlet weak var SeenButton: UIButton!
    var isSeen = true
    
    @IBAction func Seen(_ sender: UIButton) {
        isSeen = !isSeen
        if isSeen {
        sender.setTitle("Seen", for: .normal)
        } else {
           sender.setTitle("Unseen", for: .normal)
        }
    }
        
        var movie: Movie? {
            didSet {
                updateViews()
            }
        }
        private func updateViews() {
            guard let movie = movie else { return }
            
            movieLabel.text = movie.title
        }
        /*
         override func awakeFromNib() {
         super.awakeFromNib()
         // Initialization code
         }
         
         override func setSelected(_ selected: Bool, animated: Bool) {
         super.setSelected(selected, animated: animated)
         
         // Configure the view for the selected state
         }
         */
        
}
