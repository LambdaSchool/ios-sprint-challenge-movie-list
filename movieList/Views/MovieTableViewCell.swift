//
//  MovieTableViewCell.swift
//  movieList
//
//  Created by Marissa Gonzales on 4/16/20.
//  Copyright © 2020 Joe Veverka. All rights reserved.
//

import UIKit

class MovieTableViewCell: UITableViewCell {
    
    var movie: Movie?
    
    @IBOutlet weak var movieTableViewCell: UILabel!
    
    
    // Outlets

    @IBOutlet weak var seenNotSeenButton: UIButton!
    
    // For Button Below
    var haveSeen = true
    
    // ** Seen/Not Seen Button Action

    
    @IBAction func seenNotSeenAction(_ sender: UIButton) {
        
        haveSeen = !haveSeen
        
        if haveSeen == !haveSeen {
            
            sender.setTitle ("Seen", for: .normal)
            
        } else {
            
            sender.setTitle("Not Seen", for: .normal)
        }
    }
}
