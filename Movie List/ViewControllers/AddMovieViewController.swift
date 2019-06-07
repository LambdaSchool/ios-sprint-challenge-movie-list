//
//  AddMovieViewController.swift
//  Movie List
//
//  Created by Marlon Raskin on 6/7/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import UIKit


protocol AddMovieDelegate: class {
	func addMovieButtonTapped()
}

class AddMovieViewController: UIViewController {

	var movieController = MovieController()
	weak var delegate: AddMovieDelegate?
	@IBOutlet var addMovieTextField: UITextField!
	

    override func viewDidLoad() {
        super.viewDidLoad()
    }
	
	@IBAction func addMovieButtonTapped(_ sender: UIButton) {
		if let movieTitle = addMovieTextField.text {
		movieController.addMovie(title: movieTitle)
		}
		delegate?.addMovieButtonTapped()
		navigationController?.popViewController(animated: true)
	}
}
