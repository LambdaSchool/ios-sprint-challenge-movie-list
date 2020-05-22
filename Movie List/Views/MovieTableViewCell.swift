//
//  MovieTableViewCell.swift
//  Movie List
//
//  Created by Ian Becker on 5/15/20.
//  Copyright © 2020 Lambda School. All rights reserved.
//

import UIKit

protocol movieTableViewCellDelegate {
    func didTapSeenButton(for cell: MovieTableViewCell)
}

class MovieTableViewCell: UITableViewCell {
    
    @IBOutlet weak var movieLabel: UILabel!
    @IBAction func seenButtonTapped(_ sender: UIButton) {
        sender.isSelected.toggle()
    }
    
    var delegate: movieTableViewCellDelegate?
    
    func update(with movie: Movie) {
        movieLabel.text = movie.name
    }
}
