//
//  MovieTableViewCell.swift
//  Movie List
//
//  Created by Chad Parker on 2/7/20.
//  Copyright © 2020 Lambda School. All rights reserved.
//

import UIKit

class MovieTableViewCell: UITableViewCell {

    @IBOutlet weak var movieNameLabel: UILabel!
    @IBOutlet weak var seenButton: UIButton!

    var movie: Movie? {
        didSet {
            updateViews()
        }
    }

    private func updateViews() {
        guard let movie = movie else { return }
        movieNameLabel.text = movie.name
        seenButton.setTitle(movie.seen ? "Seen" : "Not Seen", for: .normal)
    }

    @IBAction func seenButtonTapped(_ sender: Any) {
        guard var copy = movie else { return }
        copy.seen.toggle()
        self.movie = copy
    }
}
