//
//  AddMovieViewController.swift
//  Movie List
//
//  Created by Taylor Lyles on 7/19/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import UIKit

protocol AddMovieDelegate {
	func movieWasAdded(_ movie: Movie)
}

class AddMovieViewController: UIViewController {

	@IBOutlet weak var movieTextField: UITextField!
	
	var delegate: AddMovieDelegate?
	
	@IBAction func addMovieTapped(_ sender: UIButton) {
		
		var movie = Movie(title: [])
		
		if let movie1 = movieTextField.text,
			!movie1.isEmpty {
			movie.title.append(movie1)
		}
		
		delegate?.movieWasAdded(movie)
		
	}
	

}
