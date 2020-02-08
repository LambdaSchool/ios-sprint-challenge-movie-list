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

    @IBOutlet weak var movieTextLabel: UILabel!
    @IBAction func seenToggle(sender: UIButton!) {
    }
//        var seenToggleButton = false
//        seenToggleButton = toggle()
    
//    if else sender.hasNotBeenSeen {
//        sender.setTitle("Not Seen", for: .normal)
//    } else {
//        sender.setTitle("Seen", for: .normal)
//    }
//    
    
//        let seen = "Seen"
//        if sender.isSelected {
//            seenToggle(sender: UIButton!).toggle() = seen       }
    
//
//
//        let hasNotBeenSeenYet: Movie = .hasNotBeenSeen
//        guard let hasBeenSeen == !movies.hasNotBeenSeen {
//            hasBeenSeen.toggle() else { return }
//        }
//    }
    
    
  
    var movies: [Movie] = []
    
    var movie: Movie? {
        didSet{
            updateViews()
        }
    }
    private func updateViews() {
    guard let movie = movie else { return }
        movieTextLabel.text = movie.name
    
    }
}

