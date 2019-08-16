//
//  MovieListTableViewCell.swift
//  Movie List
//
//  Created by Ryan Dutson on 7/19/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import Foundation
import UIKit

class MovieTableViewCell: UITableViewCell {
    
    @IBOutlet weak var movieTitleLabel: UILabel!
    @IBOutlet weak var notSeenButton: UIButton!
    
    
    @IBAction func notSeenButtonTapped(_ sender: Any) {
        notSeenButton.setTitle("Not Seen", for: .normal)
    }
}
