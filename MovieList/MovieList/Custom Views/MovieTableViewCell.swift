//
//  MovieTableViewCell.swift
//  MovieList
//
//  Created by Lisa Fisher on 8/3/19.
//  Copyright © 2019 Lisa Fisher. All rights reserved.
//

import UIKit

class MovieTableViewCell: UITableViewCell {
    
    
    @IBOutlet weak var movieTitle: UILabel!
    
    
    var movie: Movie? {
        didSet {
            updateViews()
        }
    }
    private func updateViews() {
        guard let movie = movie else { return }
        
        movieTitle.text = movie.name
        
    }

@IBAction func seenButton(_ sender: UIButton) {
    
    sender.setTitle("Seen", for: .normal)
}
}
