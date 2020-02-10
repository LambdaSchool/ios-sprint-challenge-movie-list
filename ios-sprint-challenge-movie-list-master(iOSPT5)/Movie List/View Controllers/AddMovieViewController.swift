//
//  AddMovieViewController.swift
//  Movie List
//
//  Created by David Williams on 2/9/20.
//  Copyright © 2020 Lambda School. All rights reserved.
//

import UIKit

protocol AddMovieDelegate {
    func movieWasAdded(_ movie: Movie)
}

class AddMovieViewController: UIViewController {

    @IBOutlet weak var movieTitleTextField: UITextField!
    @IBOutlet weak var movieYearTextField: UITextField!
    
    var delegate: AddMovieDelegate?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        [movieTitleTextField, movieYearTextField].forEach { $0?.delegate = self }
    }
    
    @IBAction func addMoviePressed(_ sender: Any) {
        guard let movieName = movieTitleTextField.text,
            let movieYear = movieYearTextField.text,
            !movieName.isEmpty,
            !movieYear.isEmpty,
            movieYear.isInt else { return }
        let movie = Movie(name: movieName, year: movieYear, seenNotSeen: false)
        navigationController?.popViewController(animated: true)
        
        delegate?.movieWasAdded(movie)
        dismiss(animated: true)
    }
}
extension AddMovieViewController: UITextFieldDelegate {
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        guard let text = textField.text,
            !text.isEmpty else { return false }
        if textField == movieTitleTextField {
            movieYearTextField.becomeFirstResponder()
        }
        return true
    }
    private func textfield(_ textField: UITextField, shouldChangeCharactersIn range: NSRange,
                   replacementString string: String) -> Bool {
        let maxLength = 4
        guard case movieYearTextField.text = textField.text else { return true }
        let currentString: NSString = textField.text! as NSString
        let newString: NSString = currentString.replacingCharacters(in: range, with: string) as NSString
        return newString.length <= maxLength
    }
}

extension String {
    var isInt: Bool {
        return Int(self) != nil
    }
}
