//
//  MovieCellTableViewCell.swift
//  MovieList
//
//  Created by Sherene Fearon on 4/17/20.
//  Copyright © 2020 Quwayne Brown. All rights reserved.
//

import UIKit


protocol HasBeenSeenDelegate {
    func buttonTapped()
}

class MovieCellTableViewCell: UITableViewCell {

   
    var movie: Movie? {
        didSet {
         updateViews()
        }
    }
    
    var delegate: HasBeenSeenDelegate?
    
    
    
    @IBOutlet weak var seenButton: UIButton!
    
    @IBAction func seenButtonClicked(_ sender: Any) {
        movie?.hasBeenSeen = !movie!.hasBeenSeen
        delegate?.buttonTapped()
    }
    @IBOutlet weak var movieLabel: UILabel!


    private func updateViews() {
        guard let movie = movie else { return }
        movieLabel.text = movie.name
        if movie.hasBeenSeen == true {
            seenButton.setTitle("Seen", for: .normal)
        } else {
            seenButton.setTitle("Not Seen", for: .normal)
        }
    }
}
