//
//  MoviesTableViewCell.swift
//  Movie List
//
//  Created by Austin Potts on 8/16/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import UIKit

class MoviesTableViewCell: UITableViewCell {

    @IBOutlet weak var movieLabel: UILabel!
    @IBOutlet weak var viewedButton: UIButton!
    
    @IBAction func viewedButtonTapped(_ sender: Any) {
        viewedButton.setTitle("viewed", for: .normal)
    }
    
}
