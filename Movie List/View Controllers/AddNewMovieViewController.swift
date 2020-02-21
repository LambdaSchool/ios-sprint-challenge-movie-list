//
//  AddNewMovieViewController.swift
//  Movie List
//
//  Created by Harmony Radley on 2/21/20.
//  Copyright © 2020 Lambda School. All rights reserved.
//

import UIKit

protocol AddMovieDelegate {
    func MovieWasCreated(_ mov: Movie)
}

class AddNewMovieViewController: UIViewController {

    
    
    @IBOutlet weak var movieNameTextField: UITextField!
    
    
    var delegate: AddMovieDelegate?
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    
    @IBAction func addMovieTapped(_ sender: UIBarButtonItem) {
        guard let movieName = movieNameTextField.text,
            !movieName.isEmpty else { return }
        
        let movie = Movie(name: "Batman", seenOrNotSeen: true)
        
        
        delegate?.MovieWasCreated(movie)
    }
    
    
    extension AddNewMovieViewController: UITextFieldDelegate {
        func textFieldShouldReturn(_ textField: UITextField) -> Bool {
            if let text = textField.text,
                !text.isEmpty {
                switch textField {
                case movieNameTextField:
                    movieNameTextField.becomeFirstResponder()
                default:
                    textField.resignFirstResponder()
                }
            }
            
            return false
        }
    }
    
    
    
    
    
}
