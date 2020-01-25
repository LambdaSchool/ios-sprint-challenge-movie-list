//
//  MovieCell.swift
//  Movie List
//
//  Created by Chad Rutherford on 11/8/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import UIKit

class MovieCell: UITableViewCell {
    
    // --- --- --- --- --- --- --- --- --- --- --- --- --- --- ---
    // MARK: - Properties
    var movie: Movie? {
        didSet {
            configureCell()
        }
    }
    weak var delegate: SeenSwitchDelegate?
    
    // --- --- --- --- --- --- --- --- --- --- --- --- --- --- ---
    // MARK: - Outlets
    @IBOutlet weak var movieNameLabel: UILabel!
    @IBOutlet weak var seenButton: UIButton!
    
    // --- --- --- --- --- --- --- --- --- --- --- --- --- --- ---
    // MARK: - Configuration Method
    /// Function utilized to set up the cell inside the TableView
    func configureCell() {
        guard let movie = movie else { return }
        movieNameLabel.text = movie.name
        let title = movie.isSeen ? "Seen" : "Not Seen"
        seenButton.setTitle(title, for: .normal)
    }
    
    // --- --- --- --- --- --- --- --- --- --- --- --- --- --- ---
    // MARK: - Actions
    @IBAction func seenButtonTapped(_ sender: UIButton) {
        delegate?.toggleSeen(on: self)
    }
}
