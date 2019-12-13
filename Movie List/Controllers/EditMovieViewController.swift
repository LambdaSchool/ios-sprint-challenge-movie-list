//
//  EditMovieViewController.swift
//  Movie List
//
//  Created by Tobi Kuyoro on 13/12/2019.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import UIKit

protocol EditMovieTitleDelegate {
    func editMovieTitle(_ movie: Movie)
}

class EditMovieViewController: UIViewController {
    
    @IBOutlet weak var newTitleTextField: UITextField!
    
    var delegate: EditMovieTitleDelegate?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        newTitleTextField.delegate = self
    }
    
    @IBAction func saveNewTitle(_ sender: Any) {
        if let newTitleTextField = newTitleTextField.text,
            !newTitleTextField.isEmpty {
            let movie = Movie(name: newTitleTextField, hasBeenSeen: false)
            
            delegate?.editMovieTitle(movie)
            
            dismiss(animated: true, completion: nil)
        }
    }
}

extension EditMovieViewController: UITextFieldDelegate {
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
    }
}
