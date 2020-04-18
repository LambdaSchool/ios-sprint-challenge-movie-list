//
//  AddMovieViewController.swift
//  Movie List
//
//  Created by Bronson Mullens on 4/17/20.
//  Copyright © 2020 Lambda School. All rights reserved.
//

import UIKit

protocol AddMovieDelegate {
    func newMovieAdded(_ movie: Movie)
}

class AddMovieViewController: UIViewController {

    var delegate: AddMovieDelegate?
    
    @IBOutlet weak var movieTitleTextField: UITextField!
    @IBAction func addMovieButtonTapped(_ sender: Any) {
        guard let unwrappedTitle = movieTitleTextField.text,
            !unwrappedTitle.isEmpty else { return }
        
        let movie = Movie(movieName: unwrappedTitle)
        
        delegate?.newMovieAdded(movie)
        dismiss(animated: true, completion: nil)
    }
    
}
