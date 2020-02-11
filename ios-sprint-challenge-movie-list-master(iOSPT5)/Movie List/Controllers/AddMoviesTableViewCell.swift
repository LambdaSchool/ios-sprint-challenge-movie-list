//
//  AddMoviesTableViewCell.swift
//  Movie List
//
//  Created by David Williams on 2/9/20.
//  Copyright © 2020 Lambda School. All rights reserved.
//

import UIKit

class AddMoviesTableViewCell: UITableViewCell {
    
    var movie: Movie? {
           didSet {
               self.updateViews()
           }
       }
    
    @IBOutlet weak var movieNameLabel: UILabel!
    @IBOutlet weak var movieYearLabel: UILabel!
    @IBOutlet weak var seenButton: UIButton!
    
    
    private func updateViews() {
        guard let movie = movie else { return }
        movieNameLabel.text = movie.name
        movieYearLabel.text = movie.year + "'s "
        if movie.seenNotSeen {
            seenButton.titleLabel?.text = "Seen"
        } else {
            seenButton.titleLabel?.text = "Not Seen"
        }
    }
    
    @IBAction func seenNotSeenPressed(_ sender: Any) {
        movie?.seenNotSeen.toggle()
    }
    
}
