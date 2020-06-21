//
//  AddMovieViewController.swift
//  Movie List
//
//  Created by Michael Redig on 4/26/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import UIKit

class AddMovieViewController: UIViewController, MovieControllerProtocol {

	var movieController: MovieController?
	
	@IBOutlet var movieTitleTextField: UITextField!
	override func viewDidLoad() {
		super.viewDidLoad()

	}
	
	@IBAction func addMovieButtonPressed(_ sender: UIButton) {
		guard let movieTitle = movieTitleTextField.text,
		!movieTitle.isEmpty
			else { return }
		
		movieTitleTextField.text = ""
		movieController?.addNewMovie(named: movieTitle)
	}


}
