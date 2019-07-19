//
//  ManageMovieVC.swift
//  Movie List
//
//  Created by Jeffrey Santana on 7/19/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import UIKit

protocol ManageMovieVCDelegate {
	func update(movie: Movie, listIndex: Int?)
}

class ManageMovieVC: UIViewController {

	@IBOutlet weak var titleTextfield: UITextField!
	@IBOutlet weak var seenSwitch: UISwitch!
	
	var delegate: ManageMovieVCDelegate?
	var moviePath: (movie: Movie, indexPath: IndexPath)?
	var isEditMode: Bool {
		return moviePath != nil
	}
	
	override func viewDidLoad() {
        super.viewDidLoad()

        titleTextfield.becomeFirstResponder()
		configToEdit()
    }
	
	@IBAction func manageMovieBtnAction(_ sender: Any) {
		guard let title = titleTextfield.optionalText else {
			let alert = UIAlertController(title: "Missing Content", message: "Please enter a movie title.", preferredStyle: .alert)
			
			alert.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
			
			present(alert, animated: true, completion: nil)
			return
		}
		let movie = Movie(title: title, isSeen: seenSwitch.isOn)
		
		delegate?.update(movie: movie, listIndex: moviePath?.indexPath.row)
	}
	
	private func configToEdit() {
		guard let movie = moviePath?.movie else {return}
		titleTextfield.text = movie.title
		seenSwitch.isOn = movie.isSeen
	}
	
}

extension UITextField {
	var optionalText: String? {
		let trimmedText = self.text?.trimmingCharacters(in: .whitespacesAndNewlines)
		return (trimmedText ?? "").isEmpty ? nil : trimmedText
	}
}
