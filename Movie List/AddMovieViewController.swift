//
//  AddMovieViewController.swift
//  Movie List
//
//  Created by alfredo on 11/24/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import UIKit

protocol AddMovieDelegate{
	func movieWasCreated(_ movie: Movie)
}
class AddMovieViewController: UIViewController, UITableViewDelegate {

	var delegate: AddMovieDelegate?

		@IBOutlet weak var addMovieTextField: UITextField!

		@IBAction func addMovieButtonPressed(_ sender: Any) {
			guard let movieTitle = addMovieTextField.text,
			      !movieTitle.isEmpty
				      else { return }
				      let movie = Movie(name: movieTitle, seen: false)
					      delegate?.movieWasCreated(movie)
					      dismiss(animated: true, completion: nil)
		}

	override func viewDidLoad() {
		super.viewDidLoad()
	}
	// MARK: - Navigation


}
