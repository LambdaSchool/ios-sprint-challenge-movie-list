//
//  MovieTableViewCell.swift
//  Movie List
//
//  Created by Claudia Contreras on 2/7/20.
//  Copyright © 2020 Lambda School. All rights reserved.
//

import UIKit

class MovieTableViewCell: UITableViewCell {
    
    //IBOutlets
    @IBOutlet var movieTitleLabel: UILabel!
    @IBOutlet var seenButton: UIButton!
    

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    //IBAction
    @IBAction func seenButtonTapped(_ sender: Any) {
    }
    

}
