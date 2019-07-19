//
//  MovieTableViewCell.swift
//  Movie List
//
//  Created by Taylor Lyles on 7/19/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import UIKit

class MovieTableViewCell: UITableViewCell {
	

	@IBOutlet weak var movieTitleLabel: UILabel!
	
	@IBAction func notSeenSwitch(_ sender: UIButton) {
		
	}
	
	var movie: Movie? {
		didSet {
			updateViews()
		}
	}
	
	private func updateViews() {
		guard let movie = movie else { return }
		
		movieTitleLabel.text = "\(movie.title)"
	}
	
}

