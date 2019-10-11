//
//  MovieTableViewCell.swift
//  Movie List
//
//  Created by Thomas Bernard Leonard II on 10/11/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import UIKit

class MovieTableViewCell: UITableViewCell {

    @IBOutlet weak var movieName: UILabel!
    
    
    @IBAction func seenToggle(_ sender: Any) {
        
    }
    
    
    
    var movie: Movie? {
        didSet {
            updateViews()
        }
    }

    private func updateViews() {
        guard let movie = movie else {return}
        
        movieName.text = movie.name
        
        
    }
    
    
}
