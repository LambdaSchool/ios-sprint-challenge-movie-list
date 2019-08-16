//
//  MovieTableViewCell.swift
//  Movie List
//
//  Created by brian vilchez on 8/16/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import UIKit

class MovieTableViewCell: UITableViewCell {
    
    //MARK: - Properties
    
    var movie: Movie?{
        didSet {
            updateViews()
        }
    }
    @IBOutlet weak var movieImage: UIImageView!
    @IBOutlet weak var movieNameLabel: UILabel!
    @IBOutlet weak var hasBeenSeenButton: UIButton!
    
    //MARK: - Actions
    func updateViews() {
        
        guard let movie = movie else { return }
        movieImage.image = UIImage.init(named:"IMDb.jpg")
        movieNameLabel.text = movie.movieName
        if movie.hasBeenSeen == true {
            hasBeenSeenButton.setTitle("Seen", for: .normal)
        } else if movie.hasBeenSeen == false {
            hasBeenSeenButton.setTitle("NotSeen", for: .normal)
        }
    }
    
    @IBAction func hasBeenSeenTapped(_ sender: UIButton) {
        var movie: Movie?
        if hasBeenSeenButton.currentTitle == "Seen" {
            hasBeenSeenButton.setTitle("NotSeen", for: .normal)
             movie?.hasBeenSeen = false
        } else if hasBeenSeenButton.currentTitle == "NotSeen" {
            hasBeenSeenButton.setTitle("Seen", for: .normal)
            movie?.hasBeenSeen = true
        }
     
    }
    
    
    
}
