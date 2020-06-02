//
//  MovieTableViewCell.swift
//  Movie List
//
//  Created by Craig Belinfante on 5/31/20.
//  Copyright © 2020 Lambda School. All rights reserved.
//

import UIKit

class MovieTableViewCell: UITableViewCell, UITextFieldDelegate {
    
    var movie : Movie? {
        didSet {
            updateViews()
        }
    }
    
    
    @IBOutlet weak var seenButton: UIButton!
    @IBOutlet weak var moviesLabel: UILabel!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        
    }
    
    @IBAction func seenTapped(_ sender: UIButton) {
        if var unwrappedLabel = sender.titleLabel?.text {
            if unwrappedLabel == "Seen" {
                unwrappedLabel = "Not Seen"
                movie?.seen = false
            } else {
                unwrappedLabel = "Seen"
                movie?.seen = true
            }
        }
    }
    
    private func updateViews() {
        guard let unwrappedMovie = movie else {
            return
        }
        moviesLabel.text = unwrappedMovie.movie
        
        if unwrappedMovie.seen == true {
            seenButton.setTitle("Seen", for: .normal)
        } else {
            seenButton.setTitle("Not Seen", for: .normal)
        }
        
    }
    
}



