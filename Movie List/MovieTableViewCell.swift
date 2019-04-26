//
//  MovieTableViewCell.swift
//  Movie List
//
//  Created by Michael Redig on 4/26/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import UIKit

class MovieTableViewCell: UITableViewCell {
	
	@IBOutlet var movieTitleLabel: UILabel!
	@IBOutlet var hasWatchedSwitch: UISwitch!
	
	weak var delegate: MovieTableViewCellDelegate?
	
	var movie: Movie? {
		didSet {
			updateViews()
		}
	}


	func updateViews() {
		guard let movie = movie else { return }
		movieTitleLabel.text = movie.movieName
		hasWatchedSwitch.isOn = movie.watched
	}
	@IBAction func hasWatchedToggled(_ sender: UISwitch) {
		delegate?.movieTableViewCell(cell: self, updatedWatchedValue: sender.isOn)
	}
	
}


protocol MovieTableViewCellDelegate: AnyObject {
	func movieTableViewCell(cell: MovieTableViewCell, updatedWatchedValue: Bool)
}
