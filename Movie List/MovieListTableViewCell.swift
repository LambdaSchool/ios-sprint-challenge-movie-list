//
//  MovieListTableViewCell.swift
//  Movie List
//
//  Created by Craig Swanson on 9/29/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import UIKit

class MovieListTableViewCell: UITableViewCell {
    
   

    @IBOutlet weak var movieNameLabel: UILabel!
    @IBOutlet weak var movieSeenButton: UILabel!
    
    var movie: Movie? {
        didSet {
            updateView()
        }
    }
    
   
    @IBAction func movieSeenButton(_ sender: UIButton) {
    }
    
    func updateView() {
        guard let movie = movie else { return }
        
        movieNameLabel.text = movie.name
        
    }
}
