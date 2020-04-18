//
//  AddMovieViewController.swift
//  Movie List
//
//  Created by Clayton Watkins on 4/17/20.
//  Copyright © 2020 Lambda School. All rights reserved.
//

import UIKit

protocol AddMovieDelegate {
    func movieWasAdded(_ movie: Movie)
}

class AddMovieViewController: UIViewController {
        
    var delegate: AddMovieDelegate?
    
    @IBOutlet weak var addMovieTextField: UITextField!
    @IBAction func addMovieButtonTapped(_ sender: Any) {
        guard let movie = addMovieTextField.text,
            !movie.isEmpty else { return }
        let newMovie = Movie(movieName: movie, movieSeen: false)
        delegate?.movieWasAdded(newMovie)
        dismiss(animated: true, completion: nil)
    }
}
