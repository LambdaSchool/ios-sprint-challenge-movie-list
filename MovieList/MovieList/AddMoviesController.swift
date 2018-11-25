//
//  AddMoviesController.swift
//  MovieList
//
//  Created by Sameera Leola on 11/16/18.
//  Copyright © 2018 Sameera Leola. All rights reserved.
//

import UIKit

class AddMoviesController: UIViewController {
    
    @IBOutlet weak var textField: UITextField!
    
    @IBAction func addMovieButton(_ sender: UIButton) {
        guard let newMovie = textField.text, !newMovie.isEmpty else { return }
        MovieData.shared.addMovie(newMovie)
        textField.text = ""
    }
    
    @IBAction func resetMovieList(_ sender: Any) {
        MovieData.shared.resetMovieList()
    }
}
