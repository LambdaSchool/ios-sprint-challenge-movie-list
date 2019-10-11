//
//  MovieTableViewCell.swift
//  Movie List
//
//  Created by Brandi on 10/11/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import UIKit

class MovieTableViewCell: UITableViewCell {

   
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var yearLabel: UILabel!
    @IBOutlet weak var seenButton: UIButton!
    
    var movie: Movie? {
        didSet {
            updateViews()
        }
    }

    @IBAction func seenButtonClicked(_ sender: UIButton) {
        sender.isSelected = !sender.isSelected
        
        if sender.isSelected {
            (sender as AnyObject).setTitle("Seen!", for: .normal)
        } else {
            (sender as AnyObject).setTitle("Seen?", for: .normal)
        }
        
    }
    
    private func updateViews() {
        guard let movie = movie else { return }
        
        titleLabel.text = movie.title
        yearLabel.text = movie.year
    }

}
