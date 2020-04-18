//
//  AddMovieViewController.swift
//  Movie List
//
//  Created by Sammy Alvarado on 4/17/20.
//  Copyright © 2020 Lambda School. All rights reserved.
//

import UIKit

protocol AddMovieDelegate {
    func newMovieAdded(movie: Movie)
}

class AddMovieViewController: UIViewController {

    @IBOutlet weak var movieTitleTextField: UITextField!
    
    var delegate: AddMovieDelegate?
    
    @IBAction func addMovieTapped(_ sender: UIButton) {
        guard let movieName = movieTitleTextField.text,
        !movieName.isEmpty else { return }
        
        var movie = Movie(movieName: movieName)
        
        if let newMovie = movieTitleTextField.text,
            newMovie.isEmpty {
            movie.movieName.append(newMovie)
        }
        
        delegate?.newMovieAdded(movie: movie)
        dismiss(animated: true, completion: nil)
    }
}

//extension AddMovieViewController: UITextFieldDelegate {
//       func textFieldShouldReturn( _ textField: UITextField) -> Bool {
//           return true
//       }
//   }
