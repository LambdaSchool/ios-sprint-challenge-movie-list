//
//  AddMovieVC.swift
//  Movie List
//
//  Created by Jeffrey Santana on 7/19/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import UIKit

protocol AddMovieVCDelegate {
	func addedNew(movie: Movie)
}

class AddMovieVC: UIViewController {

	@IBOutlet weak var titleTextfield: UITextField!
	
	var delegate: AddMovieVCDelegate?
	
	override func viewDidLoad() {
        super.viewDidLoad()

        titleTextfield.becomeFirstResponder()
    }
	
	@IBAction func addMovieBtnAction(_ sender: Any) {
		guard let title = titleTextfield.optionalText else {
			let alert = UIAlertController(title: "Missing Content", message: "Please enter a movie title.", preferredStyle: .alert)
			
			alert.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
			
			present(alert, animated: true, completion: nil)
			return
		}
		let newMovie = Movie(title: title, isSeen: false)
		
		delegate?.addedNew(movie: newMovie)
	}
	
}

extension UITextField {
	var optionalText: String? {
		let trimmedText = self.text?.trimmingCharacters(in: .whitespacesAndNewlines)
		return (trimmedText ?? "").isEmpty ? nil : trimmedText
	}
}
