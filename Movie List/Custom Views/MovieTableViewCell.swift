//
//  MovieTableViewCell.swift
//  Movie List
//
//  Created by Vici Shaweddy on 8/2/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import UIKit

class MovieTableViewCell: UITableViewCell {
    @IBOutlet weak var titleLabel: UILabel!
    
    var movie: Movie? {
        didSet {
            updateViews()
        }
    }
    
    private func updateViews() {
        guard let movie = movie else { return }
        
        titleLabel.text = movie.title
    }
    
    @IBAction func seenTapped(_ sender: Any) {
    }
    
}
