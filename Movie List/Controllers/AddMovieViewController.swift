//
//  MovieListViewController.swift
//  Movie List
//
//  Created by Clayton Bonaguidi on 8/2/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import UIKit

protocol AddMovieDelegate {
    func movieWasAdded(_ movie: Movie)
}

class AddMovieViewController: UIViewController {

    
    @IBOutlet weak var newMovieTextField: UITextField!
    
    var delegate: AddMovieDelegate?
    

    @IBAction func addNewMovieButton(_ sender: Any) {
        
        guard let newMovie = newMovieTextField.text, !newMovie.isEmpty else {
            return
        }
        let movie = Movie(movie: newMovie, hasSeen: false)
        delegate?.movieWasAdded(movie)
    }
}
