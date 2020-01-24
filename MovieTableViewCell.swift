//
//  MovieTableViewCell.swift
//  Movie List
//
//  Created by beth on 1/24/20.
//  Copyright © 2020 Lambda School. All rights reserved.
//

import UIKit

class MovieTableViewCell: UITableViewCell {

    @IBOutlet weak var button: UIButton!
    @IBOutlet weak var titleLabel: UILabel!
    

var movie: Movie? {
    didSet {
        updateViews()
    }
}

private func updateViews() {
    guard let movie = movie else { return }

    titleLabel.text = movie.title

}

    @IBAction func seenTapped(_ sender: Any) {
    self.movie?.hasSeen.toggle()

    // using ternary operator
    let string = self.movie?.hasSeen == true ? "Seen" : "Not Seen"

    // setting the button title
    self.button.setTitle(string, for: .normal)

}

}
