//
//  AddMovieViewController.swift
//  Movie List
//
//  Created by Jon Bash on 2019-10-11.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import UIKit

protocol AddMovieDelegate {
    func movieWasSaved(_ movie: Movie)
}

class AddMovieViewController: UIViewController {
    
    var delegate: AddMovieDelegate?
    
    @IBOutlet weak var movieTitleField: UITextField!
    //@IBOutlet weak var seenSwitch: UISwitch!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        movieTitleField.becomeFirstResponder()
    }
    
    @IBAction func cancelWasPressed(_ sender: UIBarButtonItem) {
        dismiss(animated: true, completion: nil)
    }
    
    @IBAction func saveWasPressed(_ sender: UIBarButtonItem) {
        saveNewMovie()
    }
    
    func saveNewMovie() {
        guard let title = movieTitleField.text, !title.isEmpty else {
            showEmptyFieldAlert()
            return
        }
        //let seen = seenSwitch.isOn
        let movie = Movie(title: title, seen: false)
        
        delegate?.movieWasSaved(movie)
    }
    
    private func showEmptyFieldAlert() {
        let emptyFieldAlert = UIAlertController(
            title: "Required field empty!",
            message: "'Title' field must be non-empty.",
            preferredStyle: .alert
        )
        
        emptyFieldAlert.addAction(UIAlertAction(
            title: "OK",
            style: .cancel,
            handler: { (_: UIAlertAction) in
                self.movieTitleField.becomeFirstResponder()
        }))
        
        present(emptyFieldAlert, animated: true, completion: nil)
    }
}

extension AddMovieViewController: UITextFieldDelegate {
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        if let text = textField.text, !(text.isEmpty) {
            resignFirstResponder()
            saveNewMovie()
            return false
        }
        
        showEmptyFieldAlert()
        print("getting here")
        return false
    }
}
