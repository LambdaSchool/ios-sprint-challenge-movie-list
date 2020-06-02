//
//  AddMovieViewController.swift
//  Movie List
//
//  Created by Dojo on 6/1/20.
//  Copyright © 2020 Lambda School. All rights reserved.
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
        let movie = Movie(name: newMovie, seen: false)
        delegate?.movieWasAdded(movie)
        dismiss(animated: true, completion: nil)
    }
}
