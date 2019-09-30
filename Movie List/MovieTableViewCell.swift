//
//  MovieTableViewCell.swift
//  Movie List
//
//  Created by Christian Lorenzo on 9/28/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import UIKit

protocol MovieTableViewCellDelegate: AnyObject {
    func seenNotSeenWasTapped(cell: MovieTableViewCell)
}

class MovieTableViewCell: UITableViewCell {
    
    weak var delegate: MovieTableViewCellDelegate?

    var movie: Movie? {
        didSet {setupViews()}
    }
    
    @IBOutlet weak var movieLabel: UILabel!
    
    @IBOutlet weak var seenNotSeenButton: UIButton!
    
    @IBAction func seenNotSeenPressed(_ sender: Any) {
        
        delegate?.seenNotSeenWasTapped(cell: self)
    }
    
    
    
    private func setupViews() {
        
        guard let movie = movie else {return}
        movieLabel.text = movie.movieTitle

        
        if movie.isSeen {
            seenNotSeenButton.setTitle("Seen", for: [])
        }else {
            seenNotSeenButton.setTitle("Not Seen", for: [])
        }
        
    }
    
}
