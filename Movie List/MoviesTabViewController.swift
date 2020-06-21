//
//  MoviesTabViewController.swift
//  Movie List
//
//  Created by Michael Redig on 4/26/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import UIKit

class MoviesTabViewController: UITabBarController {
	
	let movieController = MovieController()

	override func viewDidLoad() {
		super.viewDidLoad()

		configureChildren()
	}
	
	func configureChildren() {
		for child in children {
			if let vc = child as? MovieControllerProtocol {
				vc.movieController = movieController
			}
		}
	}
}
