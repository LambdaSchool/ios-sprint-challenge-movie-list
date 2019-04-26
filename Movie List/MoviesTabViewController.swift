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

        // Do any additional setup after loading the view.
    }
    

    // MARK: - Navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
		
		// I'm aware I'm ignoring the identifier - in the limited scope of this project, we really only need to know if the destination conforms to the protocol
		if let vc = segue.destination as? MovieControllerProtocol {
			vc.movieController = movieController
		}
    }
}
