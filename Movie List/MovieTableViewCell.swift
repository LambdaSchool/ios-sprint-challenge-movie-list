//
//  MovieTableViewCell.swift
//  Movie List
//
//  Created by Bhawnish Kumar on 2/21/20.
//  Copyright © 2020 Lambda School. All rights reserved.
//

import UIKit

class MovieTableViewCell: UITableViewCell {
    @IBOutlet weak var movieLabel: UILabel!
    
   
    
    @IBOutlet weak var buttonTapped: UIButton!
    
    
    @IBAction func seenButton(_ sender: Any) {
        if buttonTapped.isSelected == true  {
            buttonTapped.setTitle("Seen", for: .normal)
         buttonTapped.isSelected = false
     } else {
            buttonTapped.setTitle("Not Seen", for: .normal )
         buttonTapped.isSelected = true
     }
    }
    
    
    
   
    
    
    var movie: Movie? {
    didSet {
        updateViews()
    }
    }
        
        func updateViews() {
        guard let movie = movie else { return }
            movieLabel.text = movie.name
            
    }

}

