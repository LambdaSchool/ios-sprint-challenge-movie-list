//
//  MovieTableViewCell.swift
//  Movie List
//
//  Created by Rob Vance on 2/9/20.
//  Copyright © 2020 Lambda School. All rights reserved.
//

import UIKit

class MovieTableViewCell: UITableViewCell {
    @IBOutlet weak var movieTitleLabel: UILabel!
    @IBOutlet weak var seenButton: UIButton!
    

    private func updateViews() {
        guard let movie = movie else { return }
        movieTitleLabel.text = movie.movieName
    }
    var movie: Movie? {
        didSet {
            updateViews()
        }
    }
   
    @IBAction func seenTapped(_ sender: Any) {
        self.movie?.seen.toggle()
        
        if self.movie?.seen == true {
            self.seenButton.setTitle("seen", for: .normal)
        } else {
            self.seenButton.setTitle("not seen", for: .normal)
        }
    }
}

    


