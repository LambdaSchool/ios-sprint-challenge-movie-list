//
//  MovieTableViewCell.swift
//  movieList
//
//  Created by Marissa Gonzales on 3/20/20.
//  Copyright © 2020 Joe Veverka. All rights reserved.
//

import UIKit

class MovieTableViewCell: UITableViewCell {
    
    var newMovie: Movie? 
    
    
    
   
    @IBOutlet weak var seenNotSeenButton: UIButton!
    
    var haveSeen = true
    
    @IBAction func seenNotSeenAction(_ sender: UIButton) {
        
        haveSeen = !haveSeen
            if haveSeen {
        
                    sender.setTitle ("Seen", for: .normal) }
                        else {
                            sender.setTitle("Not Seen", for: .normal)
    }
}

    
    
    
    
//    @IBAction func check2(_ sender: UIButton) {
//        haveSeen = !haveSeen
//
//        if haveSeen {
//
//            sender.setTitle ("Seen", for: .normal) }
//                else {
//                    sender.setTitle("Not Seen", for: .normal)
//                }
//            }
//        }
    
    
    
    
    @IBOutlet weak var movieTableViewCell: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
}


