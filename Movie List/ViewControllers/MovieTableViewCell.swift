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

	var movieController = MovieController()
	var movie: Movie? {
		didSet {
			updateViews()
		}
	}
	
	func updateViews() {
		print("Look at me now")
		if let movieSeen = movie {
			movieTitleLabel.text = movieSeen.movieTitle
			if movieSeen.hasSeen == true {
				hasSeenButton.setTitle("Watched", for: .normal)
			} else if movieSeen.hasSeen == false {
				hasSeenButton.setTitle("Unwatched", for: .normal)
			}
		}
	}
	
	
	@IBOutlet var hasSeenButton: UIButton!
	@IBOutlet var movieTitleLabel: UILabel!
	weak var delegate: MovieTableViewCellDelegate?
	@IBAction func seenButtonTapped(_ sender: UIButton) {
	 	delegate?.seenButtonWasTapped(on: self)
	}
}
