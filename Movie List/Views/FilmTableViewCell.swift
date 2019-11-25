//
//  FilmTableViewCell.swift
//  Movie List
//
//  Created by John Holowesko on 11/24/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import UIKit

class FilmTableViewCell: UITableViewCell {

    // MARK: - IBOutlets
    @IBOutlet var movieNameLabel: UILabel!
    @IBOutlet var seenNotSeenButton: UIButton!
    
    // Getter & Setter
    var film: Movie? {
        didSet {
            self.updateViews()
        }
    }
    
    private func updateViews() {
        guard let film = film else { return }
        
        movieNameLabel.text = film.name
    }

}
