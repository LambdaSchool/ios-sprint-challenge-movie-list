//
//  MovieTableViewCell.swift
//  Movie List
//
//  Created by Lambda_School_Loaner_259 on 2/7/20.
//  Copyright © 2020 Lambda School. All rights reserved.
//

import UIKit

class MovieTableViewCell: UITableViewCell {
    
    // MARK: Properties
    var movie: Movie? {
        didSet {
            updateViews()
        }
    }
    
    // MARK: IBOutlets
    @IBOutlet var movieLabel: UILabel!
    @IBOutlet var seenButton: UIButton!
    
    // MARK: IBActions
    @IBAction func seenTapped(_ sender: UIButton) {
        if movie != nil {
            self.movie?.hasSeen.toggle()
        }
    }
    
    private func updateViews() {
        guard let movie = movie, !movie.movieName.isEmpty else { return }
        movieLabel.text = movie.movieName
        if movie.hasSeen == true {
            seenButton.setTitle("Seen", for: .normal)
        } else {
            seenButton.setTitle("Not Seen", for: .normal)
        }
    }

}
