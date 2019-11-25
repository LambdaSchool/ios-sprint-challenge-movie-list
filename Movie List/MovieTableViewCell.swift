//
//  MovieTableViewCell.swift
//  Movie List
//
//  Created by alfredo on 11/24/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import UIKit

class MovieTableViewCell: UITableViewCell {

	@IBOutlet weak var movieTitleLabel: UILabel!
		@IBOutlet weak var notSeenButton: UIButton!

		var movie: Movie? {
			didSet {
				updateViews()
			}
		}

	private func updateViews() {
		guard let movie = movie else { return }
		movieTitleLabel.text = movie.name
	}

	@IBAction func notSeenTapped(_ sender: UIButton) {
		movie?.seen.toggle()
			if movie?.seen == true {
				sender.setTitle("Seen", for: .normal)
			} else {
				sender.setTitle("Not Seen", for: .normal)
			}
	}

}
