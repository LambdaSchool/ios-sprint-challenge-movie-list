//
//  MovieTableViewCell.swift
//  Movie List
//
//  Created by Eoin Lavery on 05/08/2019.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import UIKit

class MovieTableViewCell: UITableViewCell {
    
    //Declare UI Elements for Cell
    @IBOutlet weak var movieNameLabel: UILabel!
    @IBOutlet weak var isSeenButton: UIButton!
    
    //Movie Property to hold value and execute updateViews when value is assigned
    var movie: Movie? {
        didSet {
            
        }
    }
    
    func updateViews() {
        guard let name = movie?.name else { return }
        movieNameLabel.text = name
        
        if let hasBeenSeen = movie?.hasBeenSeen {
            if hasBeenSeen == true {
                isSeenButton.setTitle("Seen", for: .normal)
            } else {
                isSeenButton.setTitle("Not Seen", for: .normal)
            }
        }
        
    }
    
    @IBAction func isSeenTapped(_ sender: Any) {
        
    }
}
