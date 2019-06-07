//
//  MovieTableViewCell.swift
//  Movie List
//
//  Created by Marlon Raskin on 6/7/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import UIKit

protocol MovieTableViewCellDelegate: class {
	func seenButtonWasTapped(on cell: MovieTableViewCell)
}

class MovieTableViewCell: UITableViewCell {

    override func awakeFromNib() {
        super.awakeFromNib()
        
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
	
	
	
	
	
	@IBOutlet var movieTitleLabel: UILabel!
	weak var delegate: MovieTableViewCellDelegate?
	@IBAction func seenButtonTapped(_ sender: UIButton) {
		delegate?.seenButtonWasTapped(on: self)
	}
	

}
