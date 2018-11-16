//
//  AddMovieViewController.swift
//  Movie List
//

import UIKit

class AddMovieViewController: UIViewController {
    
    @IBAction func addMovieButton(_ sender: Any) {
        
        // guard against an empty text field
        guard let newMovie = textField.text, !newMovie.isEmpty else { return }
        
        
        
    }
    
    
    @IBOutlet weak var textField: UITextField!
    
}
