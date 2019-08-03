//
//  AddMovieViewController.swift
//  Movie List
//
//  Created by Dillon P on 8/3/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import UIKit

protocol AddMovieDelegate {
    func movieWasAdded(_ movie: Movie)
}

class AddMovieViewController: UIViewController {

    // MARK: - Outlets
    
    @IBOutlet weak var newMovieTextField: UITextField!
    
    // MARK: - Properties
    
    var delegate: AddMovieDelegate?
    
    // MARK: - Functions
    
    override func viewDidLoad() {
        super.viewDidLoad()
        newMovieTextField.delegate = self
    }
    
    // MARK: - Actions
    
    @IBAction func addMovieButtonTapped(_ sender: Any) {
        guard let newMovieName = newMovieTextField.text, !newMovieName.isEmpty else { return needNameofMovie() }
        let newMovie = Movie(name: newMovieName, seen: false)
        delegate?.movieWasAdded(newMovie)
    }
    

    private func needNameofMovie() {
        let alert = UIAlertController(title: "Complete Required Fields", message: "Please enter a movie title.", preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: NSLocalizedString("OK", comment: "Default action"), style: .default, handler: { _ in
            NSLog("The \"OK\" alert occured.")
        }))
        self.present(alert, animated: true)
    }
    
}

// MARK: - Extensions

extension AddMovieViewController: UITextFieldDelegate {
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        switch textField {
        case newMovieTextField:
            resignFirstResponder()
            addMovieButtonTapped(textField)
        default:
            resignFirstResponder()
        }
        return false
    }
}
