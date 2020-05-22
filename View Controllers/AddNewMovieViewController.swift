//
//  AddNewMovieViewController.swift
//  Movie List
//
//  Created by Bryan Cress on 5/15/20.
//  Copyright © 2020 Lambda School. All rights reserved.
//

import UIKit

protocol AddMovieDelegate {
    func movieWasCreated(movie: Movie)
}

class AddNewMovieViewController: UIViewController, UITextFieldDelegate {
    
    var addDelegate: AddMovieDelegate?
    
    @IBOutlet weak var movieTextField: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    
    @IBAction func SaveMovieButton(_ sender: Any) {
        
        guard let name = movieTextField.text else { return }
        let newMovie = Movie(name: name)
        
        addDelegate?.movieWasCreated(movie: newMovie)
        dismiss(animated: true, completion: nil)
    }
    
    @IBAction func Cancel(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
}
