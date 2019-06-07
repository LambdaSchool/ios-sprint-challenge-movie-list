//
//  MovieTableViewCell.swift
//  Movie List
//
//  Created by Sean Acres on 6/7/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import UIKit

class MovieTableViewCell: UITableViewCell {

    @IBOutlet var movieNameLabel: UIStackView!
    @IBOutlet var isSeenButton: UIButton!
    
    @IBAction func isSeenButtonTapped(_ sender: Any) {
    }
    
}
