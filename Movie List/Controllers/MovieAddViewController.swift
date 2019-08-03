//
//  MovieAddViewController.swift
//  Movie List
//
//  Created by Aaron on 8/2/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import UIKit

protocol AddMovieDelegate {
    func movieWasAdded(_ movie: Movie)
}

class MovieAddViewController: UIViewController {

    @IBOutlet weak var addMovieTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    var delegate: AddMovieDelegate?

    
    @IBAction func addButtonTapped(_ sender: Any) {
        
        guard let newMovie = addMovieTextField.text, !newMovie.isEmpty else { return }
        let addedMovie = Movie(name: newMovie)
        
        delegate?.movieWasAdded(addedMovie)
       
        
    }
    
}

extension MovieAddViewController: UITextFieldDelegate {
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        if let text = textField.text, !text.isEmpty {
            switch textField {
            case addMovieTextField: addMovieTextField.becomeFirstResponder()
            default: textField.resignFirstResponder()
            }
        }
        return false
    }
 
    
    
    
}
