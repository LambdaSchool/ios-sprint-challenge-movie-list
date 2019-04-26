//
//  ListParentNavViewController.swift
//  Movie List
//
//  Created by Michael Redig on 4/26/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import UIKit

class ListParentNavViewController: UINavigationController, MovieControllerProtocol {

	var movieController: MovieController? {
		didSet {
			updateChildren()
		}
	}
	
    override func viewDidLoad() {
        super.viewDidLoad()
    }
	
	func updateChildren() {
		for child in viewControllers {
			if let vc = child as? MovieControllerProtocol {
				vc.movieController = movieController
			}
		}
	}

}
