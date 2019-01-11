//
//  MovieTableViewCell.swift
//  Movie List
//
//  Created by Nelson Gonzalez on 1/11/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import UIKit

class MovieTableViewCell: UITableViewCell {
    
    @IBOutlet weak var movieLabel: UILabel!
    
    


    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    
    @IBAction func seenButton(_ sender: UIButton) {
        
        if MovieViewModel.shared.seen {
           // MovieViewModel.shared.seen = false
            MovieViewModel.shared.changeSeen(value: false)
            sender.setTitle("Not Seen", for: .normal)
            
        } else {
           // MovieViewModel.shared.seen = true
            MovieViewModel.shared.changeSeen(value: true)
            sender.setTitle("Seen", for: .normal)
        }
        
    }
    
}
