//
//  MovieTableViewCell.swift
//  Movie List
//
//  Created by Fabiola S on 8/2/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import UIKit

class MovieTableViewCell: UITableViewCell {
    
    @IBOutlet weak var movieTitleLabel: UILabel!
    @IBOutlet weak var seenButton: UIButton!
    

    var movie: Movie? {
        didSet {
            updateViews()
        }
    }
    
    var notSeen = true
    
    private func updateViews() {
        guard let movie = movie else { return }
        
        movieTitleLabel.text = movie.name
        seenButton.tintColor = .red
    }
    
    
    @IBAction func seenButton(_ sender: UIButton) {
        notSeen = !notSeen
        if notSeen {
            sender.setTitle("Not Seen", for: .normal)
            sender.setTitleColor(.red, for: .normal)
        } else {
            sender.setTitle("Seen", for: .normal)
            sender.setTitleColor(.blue, for: .normal)
        }
    }
    

}
