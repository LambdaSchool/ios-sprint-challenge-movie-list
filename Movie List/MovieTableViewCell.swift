//
//  MovieTableViewCell.swift
//  Movie List
//
//  Created by Percy Ngan on 8/16/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import UIKit

class MovieTableViewCell: UITableViewCell {

	@IBOutlet weak var movieLabel: UILabel!


	override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

	
	@IBAction func seenButtonToggled(_ sender: UIButton) {
	}
	
}
