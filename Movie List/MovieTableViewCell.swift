//
//  MovieTableViewCell.swift
//  Movie List
//
//  Created by macbook on 9/13/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import UIKit

class MovieTableViewCell: UITableViewCell {
    
    @IBOutlet weak var movieTextField: UILabel!
    @IBOutlet weak var seenButton: UIButton!
    
 
    var movie: Movie? {
        didSet {
            updateViews()
        }
    }
    
    
    // private func updateViews
    private func updateViews() {
        guard let movie = movie else { return }
        
        movieTextField.text = movie.name
        
        checkHasBeenSeen()
    }

    
    weak var delegate: MoviesTableViewController?
  
    @IBAction func seenButtonPressed(_ sender: Any) {
        
        movie?.hasBeenSeen = true
        
        checkHasBeenSeen()
    }
    
    func checkHasBeenSeen() {
        if movie?.hasBeenSeen == false {
            seenButton?.titleLabel?.text = "Not Seen"
        } else {
            seenButton?.titleLabel?.text = "Seen"
            
        }
    }
}
