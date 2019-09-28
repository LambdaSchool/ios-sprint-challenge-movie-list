//
//  MovieTableViewCell.swift
//  Movie List
//
//  Created by Gavin Murphy on 9/27/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import UIKit

class MovieTableViewCell: UITableViewCell {

    
    @IBOutlet weak var movieLabel: UILabel!
    @IBOutlet weak var notSeenLabel: UIButton!
    
    @IBAction func notSeenButtonPressed(_ sender: Any) {
    }
    
    
    var movie: Movie? {
        didSet { updateViews() }
    }

    private func updateViews() {
        guard let movie = movie else { return }
        
        movieLabel.text = movie.name
        notSeenLabel.setTitle("Not Seen", for: [])
    }

}
