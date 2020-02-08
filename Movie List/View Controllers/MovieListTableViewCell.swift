//
//  MovieListTableViewCell.swift
//  Movie List
//
//  Created by Breena Greek on 2/7/20.
//  Copyright © 2020 Lambda School. All rights reserved.
//

import UIKit



class MovieListTableViewCell: UITableViewCell {

// MARK: IBOutlets
    
    @IBOutlet weak var movieLabel: UILabel!
    
    @IBAction func seenToggle(sender: UIButton!) {}
//        guard case let movies.hasBeenSeen == true else { return }
//    }
//
    var movies: [Movie] = []
    
    var movie: Movie? {
        didSet{
            updateViews()
        }
    }
    private func updateViews() {
    guard let movie = movie else { return }
        movieLabel.text = movie.name
        
    }

}
