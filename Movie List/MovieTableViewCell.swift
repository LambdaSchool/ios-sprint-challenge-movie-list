//
//  MovieTableViewCell.swift
//  Movie List
//
//  Created by Kenneth Jones on 4/17/20.
//  Copyright © 2020 Lambda School. All rights reserved.
//

import UIKit

class MovieTableViewCell: UITableViewCell {
    
    @IBOutlet weak var movieLabel: UILabel!
    @IBOutlet weak var seenButton: UIButton!
    
    var movie: Movie? {
        didSet {
            self.updateViews()
        }
    }
    
    @IBAction func seenBtnPressed(_ sender: Any) {
        self.movie?.seen = !(self.movie?.seen ?? false)
        updateButton()
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        // Initialization code
        updateButton()
    }
    
    private func updateViews() {
        guard let movie = self.movie else { return }
        
        movieLabel.text = movie.name
    }
    
    private func updateButton() {
        guard let movie = self.movie else { return }
        
        if movie.seen {
            seenButton.setTitle("Seen", for: .normal)
        } else {
            seenButton.setTitle("Not Seen", for: .normal)
        }
    }
}
