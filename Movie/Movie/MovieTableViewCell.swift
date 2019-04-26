//
//  MovieTableViewCell.swift
//  Movie
//
//  Created by Diante Lewis-Jolley on 4/26/19.
//  Copyright © 2019 Diante Lewis-Jolley. All rights reserved.
//

import UIKit

class MovieTableViewCell: UITableViewCell {




    @IBAction func wasSeenButtonTapped(_ sender: Any) {

        delegate?.wasSeenButtonTapped(on: self)

    }

    private func updateView() {
        guard let movie = movie else { return }
        movieLabel.text = movie.movie

        if movie.wasSeen == true {
            wasSeenButton.setTitle("notSeen", for: .normal)
        } else {
            if movie.wasSeen == false {
                wasSeenButton.setTitle("seen", for: .normal)
            }
        }
    }
    
    

    @IBOutlet weak var movieLabel: UILabel!
    var delegate: MovieTableViewCellDelegate?
    @IBOutlet weak var wasSeenButton: UIButton!
    
    var movie: Movie? {
        didSet {
            updateView()
        }
    }
}
