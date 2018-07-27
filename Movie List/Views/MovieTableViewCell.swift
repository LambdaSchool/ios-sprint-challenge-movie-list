//
//  MovieTableViewCell.swift
//  Movie List
//
//  Created by Jeremy Taylor on 7/27/18.
//  Copyright © 2018 Lambda School. All rights reserved.
//

import UIKit

class MovieTableViewCell: UITableViewCell {

    // MARK: - Properties
    
    @IBOutlet weak var movieTitleLabel: UILabel!
    @IBOutlet weak var toogleSeenButton: UIButton!
    

    @IBAction func toggleSeenButton(_ sender: Any) {
    }
}
