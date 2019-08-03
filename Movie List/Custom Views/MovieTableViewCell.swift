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
    @IBOutlet weak var button: UIButton!
    
    
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
        self.movie?.hasSeen.toggle()
        
        // using ternary operator
        let string = self.movie?.hasSeen == true ? "Seen" : "Not Seen"
        
        // setting the button title
        self.button.setTitle(string, for: .normal)
        
    }
    
}
