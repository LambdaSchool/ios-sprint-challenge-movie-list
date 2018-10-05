//
//  MovieTableViewCell.swift
//  Movie List
//
//  Created by Nikita Thomas on 10/5/18.
//  Copyright © 2018 Lambda School. All rights reserved.
//

import UIKit

class MovieTableViewCell: UITableViewCell {
    
    @IBOutlet weak var movieTitle: UILabel!
    @IBOutlet weak var seenButton: UIButton!
    
    weak var delegate: MovieTableViewCellDelegate?
    var indexPath: IndexPath?
    
    @IBAction func seenButtonPressed(_ sender: UIButton) {
        delegate?.tappedSeenButton(on: self)
    }
    
}
