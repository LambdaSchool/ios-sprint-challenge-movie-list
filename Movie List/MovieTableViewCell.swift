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
	var movie: Movie? {
		didSet {
			updateViews()
		}
	}


	func updateViews() {
		// no need to unwrap cuz text is also optional
		movieTitleLabel.text = movie?.movieName
	}

}
