//
//  AddMovieViewController.swift
//  Movie List
//
//  Created by Rob Vance on 4/17/20.
//  Copyright © 2020 Lambda School. All rights reserved.
//

import UIKit

protocol AddMovieDelegate {
    func movieWasAdded(_ movie: Movie)
}


class AddMovieViewController: UIViewController {
// Mark: IBOutlets
    @IBOutlet weak var addMovieTextField: UITextField!
    
    var movie: Movie?
    var delegate: AddMovieDelegate?
    
// Mark: IBActions
    @IBAction func addMovieTapped(_ sender: Any) {
        guard let movieName = addMovieTextField.text,
            !movieName.isEmpty else { return }
        
        let movie = Movie(movieName: movieName, seen: false)
        
        delegate?.movieWasAdded(movie)
//        dismiss(animated: true, completion: nil)
        navigationController?.popViewController(animated: true)
    }
}

extension AddMovieViewController: UITextFieldDelegate {
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        return true
    }
}
