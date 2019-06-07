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

	
	var movie: Movie? {
		didSet {
			updateViews()
		}
	}
	
	func updateViews() {
		if let movieSeen = movie {
			if movieSeen.hasSeen == true {
				hasSeenButton.setTitle("Seen", for: .normal)
			} else if movieSeen.hasSeen == false {
				hasSeenButton.setTitle("Not Seen", for: .normal)
			}
		}
	}

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
	
	
	@IBOutlet var hasSeenButton: UIButton!
	@IBOutlet var movieTitleLabel: UILabel!
	weak var delegate: MovieTableViewCellDelegate?
	@IBAction func seenButtonTapped(_ sender: UIButton) {
		delegate?.seenButtonWasTapped(on: self)
	}
	

}
