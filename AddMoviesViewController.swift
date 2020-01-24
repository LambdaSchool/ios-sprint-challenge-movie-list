//
//  AddMoviesViewController.swift
//  Movie List
//
//  Created by Keri Levesque on 1/24/20.
//  Copyright © 2020 Lambda School. All rights reserved.
//

import UIKit

protocol AddMoviesDelegate {
    func movieWasCreated(_ movie: Movie)
}

class AddMoviesViewController: UIViewController, UITextFieldDelegate {
 
    @IBOutlet weak var movieTitleTextField: UITextField!
    
    var addMovie: AddMoviesDelegate?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        movieTitleTextField.delegate = self
    }
       
    @IBAction func addMovieTapped(_ sender: Any) {
        
        guard let name = movieTitleTextField.text, !name.isEmpty else { return }
        
        let movie = Movie(name: name, watched: true)
        
        addMovie?.movieWasCreated(movie)
        
        movieTitleTextField.text = ""
        navigationController?.popToRootViewController(animated: true)
    }
    
}
