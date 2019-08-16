//
//  MovieTableViewCell.swift
//  MovieList
//
//  Created by Joshua Franklin on 8/16/19.
//  Copyright © 2019 AMSU. All rights reserved.
//

import UIKit

class MovieTableViewCell: UITableViewCell {

    @IBOutlet weak var titleLabel: UILabel!

    @IBOutlet weak var UnseenButton: UIButton!
    
    @IBAction func unseenButtonPressed(_ sender: Any) {
        UnseenButton.setTitle("Seen", for: .normal)
    }
}
