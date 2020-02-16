//
//  AddMoviesTableViewCell.swift
//  Movie List
//
//  Created by David Williams on 2/9/20.
//  Copyright © 2020 Lambda School. All rights reserved.
//

import UIKit

//protocol MovieTableViewCellDelegate {
//    func toggleHasBeenSeen(cell: MoviesTableViewCell)
//}

class MoviesTableViewCell: UITableViewCell {

    var movie: Movie? {
        didSet {
            updateViews()
        }
    }
    
     var delegate: MoviesTableViewCellDelegate?
    
    @IBOutlet weak var movieNameLabel: UILabel!
    @IBOutlet weak var movieYearLabel: UILabel!
    @IBOutlet weak var seenButton: UIButton!
    
    private func updateViews() {
        guard let movie = movie else { return }
        movieNameLabel.text = movie.name
        movieYearLabel.text = movie.year + "'s "
        let title = movie.seenNotSeen ? "Seen it" : "Not seen it"
        seenButton.setTitle(title, for: [])
    }

    @IBAction func seenNotSeenPressed(_ sender: UIButton) {
        delegate?.toggleHasBeenSeen(for: self)
    }
}
