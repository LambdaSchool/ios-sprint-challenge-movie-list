//
//  AddMovieViewController.swift
//  Movie List
//
//  Created by Percy Ngan on 7/19/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import UIKit

protocol AddMovieDelegate {
    func movieWasCreated(_ newMovie: Movie)
}

class AddMovieViewController: UIViewController {
    
    @IBOutlet weak var movieTextField: UITextField!
    
    var delegate: AddMovieDelegate?
    
    @IBAction func addMovieTapped(_ sender: Any) {
        guard let movie = movieTextField.text,
            !movie.isEmpty else { return }
        
        let newMovie = Movie(name: movie, seen: false)
        
        delegate?.movieWasCreated(newMovie)
    }
   
    
    }
    

 
//extension AddMovieViewController: UITextFieldDelegate {
//
//func textFieldShouldSave(_ textField: UITextField) -> Bool {
//    if let text = textField.text,
//        !text.isEmpty {
//
//    }
//
//    return false
//}
//}
