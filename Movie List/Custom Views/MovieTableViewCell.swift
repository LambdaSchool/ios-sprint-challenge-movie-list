//
//  MovieTableViewCell.swift
//  Movie List
//
//  Created by Dillon P on 8/3/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import UIKit

protocol CellButtonDelegate {
    func onClick(index: Int)
    func movieWatchedStatus(_ movie: Movie)
}

class MovieTableViewCell: UITableViewCell {

    // MARK: - Outlets
    
    @IBOutlet weak var movieNameLabel: UILabel!
    @IBOutlet weak var movieWatchedStatus: UIButton!
    
    
    // MARK: - Properties
    
    var buttonDelegate: CellButtonDelegate?
    var index: IndexPath?
    
    var movie: Movie? {
        didSet {
            updateViews()
        }
    }
    
    // MARK: - Functions
    
    private func updateViews() {
        guard let movie = movie else { return }
        movieNameLabel.text = movie.name
        movieWatchedStatus.isHidden = false
    }
    

    // MARK: - Actions
    
    @IBAction func movieWatchedTapped(_ sender: Any) {
        guard let movie = movie else { return }
        if movie.seen == false {
            movieWatchedStatus.setTitle("Seen", for: .normal)
            buttonDelegate?.onClick(index: (index?.row)!)
            buttonDelegate?.movieWatchedStatus(movie)
        } else if movie.seen == true {
            movieWatchedStatus.setTitle("Not Seen", for: .normal)
            buttonDelegate?.onClick(index: (index?.row)!)
            buttonDelegate?.movieWatchedStatus(movie)
        }
    }
}

