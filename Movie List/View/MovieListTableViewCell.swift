//
//  MovieListTableViewCell.swift
//  Movie List
//
//  Created by Jake Connerly on 6/7/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import UIKit

class MovieListTableViewCell: UITableViewCell {
    //
    // MARK: - Outlets
    //
    @IBOutlet weak var movieListLabel: UILabel!
    @IBOutlet weak var seenUnseenButton: UIButton!
    //
    // MARK: - Actions
    //
    
    @IBAction func seenUnseenButtonTapped(_ sender: UIButton) {
    }
}
