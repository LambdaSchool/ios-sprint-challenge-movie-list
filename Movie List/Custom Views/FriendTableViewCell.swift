//
//  MovieTableViewCell.swift
//  MovieList
//
//

import UIKit

class MovieTableViewCell: UITableViewCell {
    
    @IBOutlet weak var movieNameLabel: UILabel!

    var movie: Movie? {
        didSet {
            updateViews()
        }
    }

    private func updateViews() {
        guard let movie = movie else { return }
        
        movieNameLabel.text = movie.movieName
       
    }
}
