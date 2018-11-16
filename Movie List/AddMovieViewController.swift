//
//  AddMovieViewController.swift
//  Movie List
//

import UIKit

class AddMovieViewController: UIViewController {
    
    
    
    @IBAction func addMovieButton(_ sender: Any) {
        
        // guard against an empty text field
        guard let newMovie = textField.text, !newMovie.isEmpty else { return }
        
        // update the model with the new movie
        Model.shared.addMovie(newMovie)
        
    }
    
    
    @IBOutlet weak var textField: UITextField!
    
}
