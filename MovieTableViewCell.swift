//
//  MovieTableViewCell.swift
//  Movie List
//
//  Created by Uptiie on 8/16/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import UIKit

class MovieTableViewCell: UITableViewCell {

    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var seenButton: UIButton!
    
    @IBAction func studiedButtonPressed(_ sender: Any) {
        seenButton.setTitle("Seen", for: .normal)
    }
    
    

}
