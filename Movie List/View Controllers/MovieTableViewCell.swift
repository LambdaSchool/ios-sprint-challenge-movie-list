//
//  MovieTableViewCell.swift
//  Movie List
//
//  Created by Samantha Gatt on 7/27/18.
//  Copyright © 2018 Lambda School. All rights reserved.
//

import UIKit

// Going to delegate a task to the view controller
protocol MovieTableViewCellDelegate: class {
    func seenButtonWasTapped(onCell: MovieTableViewCell)
}


class MovieTableViewCell: UITableViewCell {
    
    @IBAction func seenButtonTapped(_ sender: Any) {
        delegate?.seenButtonWasTapped(onCell: self)
    }
    
    @IBOutlet weak var movieTitleLabel: UILabel!
    
    weak var delegate : MovieTableViewCellDelegate?
    var movie: Movie?
}
