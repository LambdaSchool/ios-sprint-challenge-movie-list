//
//  MovieTableViewCell.swift
//  Movie List
//
//  Created by macbook on 9/13/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import UIKit

class MovieTableViewCell: UITableViewCell {
    
    var movie: Movie?
    
    @IBOutlet weak var movieTextField: UILabel!
    @IBOutlet weak var seenButton: UIButton!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        //seenButtonPressed.title
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

    
    // TODO : - Seen / Not Seen Button  (you might have to do an else statement)
    
    @IBAction func seenButtonPressed(_ sender: Any) {
        
        if movie?.hasBeenSeen == true {
            seenButton?.titleLabel?.text = "Seen"
            
            
        //buttonTitle.setTitle("Not Seen",for: .normal)
            
        }
        
    }
}
