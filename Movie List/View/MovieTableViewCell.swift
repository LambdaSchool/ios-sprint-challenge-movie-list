//
//  MovieTableViewCell.swift
//  Movie List
//
//  Created by Kat Milton on 6/7/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import UIKit

protocol MovieTableViewCellDelegate: class {
    func seenButtonTapped(on cell: MovieTableViewCell)
}

class MovieTableViewCell: UITableViewCell {
   
    
    
    
    // MARK: - Outlets and Properties
    @IBOutlet var movieNameLabel: UILabel!
    @IBOutlet var seenButton: UIButton!
    
    var movie: Movie? {
        didSet {
            self.updateView()
        }
    }
    
    
    weak var delegate: MovieTableViewCellDelegate?
    
    // MARK: - IBActions
    @IBAction func seenButtonTapped(_ sender: Any) {
        delegate?.seenButtonTapped(on: self)
    }
    
    
    // MARK: - Functions
    func updateView() {
        guard let currentMovie = self.movie else { return }
        self.movieNameLabel.text = currentMovie.name
        if self.movie?.seen == true {
            seenButton.setTitle("Seen", for: .normal)
        } else {
            seenButton.setTitle("Not Seen", for: .normal)
        }
        
    }
    
    
}
