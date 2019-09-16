//
//  MovieTableViewCell.swift
//  Movie List
//
//  Created by Ry Bautista on 9/13/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//


import UIKit

class MovieTableViewCell: UITableViewCell {

	@IBOutlet weak var movieLabel: UILabel!
	@IBOutlet weak var seenButton: UIButton!


	var movie1: Movie? {
		didSet {
			updateViews()
		}
	}

	
	@IBAction func seenButtonToggled(_ sender: UIButton) {
		sender.isSelected.toggle()
		if sender.isSelected == true {
			seenButton.setTitle("Seen", for: .normal)
		}
	}

	private func updateViews() {
		guard let movie1 = movie1 else { return }

		movieLabel.text = movie1.name
	
	}
	
}
