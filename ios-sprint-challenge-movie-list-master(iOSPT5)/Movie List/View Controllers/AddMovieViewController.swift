//
//  AddMovieViewController.swift
//  Movie List
//
//  Created by David Williams on 2/9/20.
//  Copyright © 2020 Lambda School. All rights reserved.
//

import UIKit

protocol AddMovieDelegate: AnyObject {
    func movieWasAdded(_ movie: Movie)
}

class AddMovieViewController: UIViewController {

    @IBOutlet weak var movieTitleTextField: UITextField!
    @IBOutlet weak var movieYearTextField: UITextField!
    
    var movieConntroller: MovieController?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .gray
        movieTitleTextField.backgroundColor = .lightGray
        movieYearTextField.backgroundColor = .lightGray
        [movieTitleTextField, movieYearTextField].forEach { $0?.delegate = self }
    }
    
    @IBAction func addMoviePressed(_ sender: Any) {
        guard let movieName = movieTitleTextField.text,
            let movieYear = movieYearTextField.text,
            !movieName.isEmpty,
            !movieYear.isEmpty,
            movieYear.isInt else { return }
        movieConntroller?.createMovie(named: movieName, year: movieYear)
       
        navigationController?.popViewController(animated: true)
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
    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange,
                   replacementString string: String) -> Bool
    {
        let maxLength = 4
        // checks a specific user input to set input string length
        guard case movieYearTextField.text = textField.text else { return true}
        let currentString: NSString = textField.text! as NSString
        let newString: NSString =
            currentString.replacingCharacters(in: range, with: string) as NSString
        return newString.length <= maxLength
    }
}

extension String {
    var isInt: Bool {
        return Int(self) != nil
    }
}
