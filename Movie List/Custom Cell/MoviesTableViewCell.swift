//
//  MoviesTableViewCell.swift
//  Movie List
//
//  Created by Welinkton on 10/5/18.
//  Copyright © 2018 Lambda School. All rights reserved.
//

import UIKit

protocol MovieTableCellDelegate: class {
    func updateMovieCell(for cell: MoviesTableViewCell)
}

class MoviesTableViewCell: UITableViewCell {

    weak var delegate: MovieTableCellDelegate?
    
    var movie: Movie? {
        didSet {updateViews()}
    }
    
    func updateViews() {
        guard let movie = movie else {return}
        movieNameLabel.text = movie.name
        movie.isSeen ? isSeenButton.setTitle("Seen", for:. normal) : isSeenButton.setTitle("Not Seen", for: .normal)
    }

    @IBAction func isSeenToggle(_ sender: Any) {
        delegate?.updateMovieCell(for: self)
    }
    
    @IBOutlet weak var movieNameLabel: UILabel!
    
    @IBOutlet weak var isSeenButton: UIButton!
    
}
