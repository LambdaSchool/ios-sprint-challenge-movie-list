//
//  AddMovieViewController.swift
//  Movie List
//
//  Created by Percy Ngan on 8/16/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import UIKit

protocol AddMovieDelegate {
	func movieCreated(_ movie: Movie)
}

class AddMovieViewController: UIViewController {

	
	@IBOutlet weak var addMovieTextField: UITextField!

	var delegate: AddMovieDelegate?

	
	override func viewDidLoad() {
		super.viewDidLoad()

		addMovieTextField.delegate = self
	}

	@IBAction func AddButtonPressed(_ sender: UIButton) {

		guard let movieText = addMovieTextField.text,
			!movieText.isEmpty else { return }

		var movie = Movie(name: movieText, seen: false)

		delegate?.movieCreated(movie)
		dismiss(animated: true, completion: nil)
	}
}

extension AddMovieViewController: UITextFieldDelegate {

	func textFieldShouldReturn(_ textField: UITextField) -> Bool {
		if let text = textField.text, !text.isEmpty {
			textField.resignFirstResponder()
		}
		return false
	}
}
