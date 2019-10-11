//
//  MovieListTableViewCell.swift
//  Movie List
//
//  Created by Angelique on 10/11/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import UIKit


protocol MovieSeen {
    func ButtonToggled(_ cell: MovieListTableViewCell)
}

class MovieListTableViewCell: UITableViewCell {
    
    @IBOutlet weak var movieLabel: UILabel!
    @IBOutlet weak var seenButton: UIButton!

    var movie: Movie? {
        didSet {
            updateViews()
        } 
        
     private func updateViews()
        guard let moview = moview else {
        return
        }
        if movie?.seen == false {
        seenButton.setTitle("Not Seen", for: .normal)
        movie?.seen = true
        } else {
        movie?.seen = false
        seenButton.setTitle("Seen", for: .normal)
        }
    }

}


