//
//  EditMovieViewController.swift
//  Movie List
//
//  Created by Michael Redig on 4/26/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import UIKit

class EditMovieViewController: UIViewController, MovieControllerProtocol {

	var movieController: MovieController?
	var movie: Movie? {
		didSet {
			updateViews()
		}
	}
	
	@IBOutlet var movieTitleTextField: UITextField!
	
	
	override func viewDidLoad() {
        super.viewDidLoad()

		updateViews()
	}
	
	func updateViews() {
		guard isViewLoaded else { return }
		movieTitleTextField.text = movie?.movieName
	}
	
	
	@IBAction func updateMovieTitleButtonPressed(_ sender: UIButton) {
		guard let movie = movie,
			let newName = movieTitleTextField.text,
			!newName.isEmpty
			else { return }
		movieController?.updateMovie(movie: movie, withNewName: newName)
		navigationController?.popViewController(animated: true)
	}
	

}
