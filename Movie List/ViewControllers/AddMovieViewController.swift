//
//  AddMovieViewController.swift
//  Movie List
//
//  Created by Sammy Alvarado on 4/17/20.
//  Copyright © 2020 Lambda School. All rights reserved.
//

import UIKit

protocol AddMovieDelegate {
    func newMovieAdded(_ movie: Movie)
}

class AddMovieViewController: UIViewController {

    @IBOutlet weak var movieTitleTextField: UITextField!
    
    var delegate: AddMovieDelegate?
    
    @IBAction func addMovieTapped(_ sender: Any) {
        guard let movieName = movieTitleTextField.text,
        !movieName.isEmpty else { return }
        
        let movies = Movie(movieName: movieName)
        delegate?.newMovieAdded(movies)
        
        self.navigationController?.popViewController(animated: true)
        
        
//        self.dismiss(animated: true, completion: nil) // Not sure why its not dismissing
    }
}

//extension AddMovieViewController: UITextFieldDelegate {
//       func textFieldShouldReturn( _ textField: UITextField) -> Bool {
//        return true
//
//       }
//   }
