//
//  MoviesTableViewCell.swift
//  Movie List
//
//  Created by Jason Hoover on 5/15/20.
//  Copyright © 2020 Lambda School. All rights reserved.
//

import UIKit

class MoviesTableViewCell: UITableViewCell {
    
    var movie: Movies?
    
    @IBOutlet weak var movieTitle: UILabel!
    
    @IBOutlet weak var hasItBeenSeen: UIButton!
    
    @IBAction func seenButton(_ sender: UIButton) {
        if sender.currentTitle == "Seen" {
            sender.setTitle("Not Seen", for: .normal)
            movie?.watched = false
        }else if sender.currentTitle == "Not Seen" {
            sender.setTitle("Seen", for: .normal)
            movie?.watched = true
        }else {
            print("ERROR")
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
