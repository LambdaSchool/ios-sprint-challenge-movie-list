//
//  MovieTableViewCell.swift
//  MovieList
//
//  Created by Joshua Franklin on 8/16/19.
//  Copyright © 2019 AMSU. All rights reserved.
//

import UIKit

class MovieTableViewCell: UITableViewCell {

    @IBOutlet weak var movieLabel: UILabel!
    
    @IBAction func notSeenTapped(_ sender: Any) {
    }
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
