//
//  AddMovieViewController.swift
//  Movie List
//
//  Created by dc on 2/21/20.
//  Copyright © 2020 Lambda School. All rights reserved.
//

import UIKit

protocol AddMovieDelegate {
    func didAddMovie(_ movie: Movie)
}

class AddMovieViewController: UIViewController {

    @IBOutlet weak var movieNameTextField: UITextField!
    
    var delegate: AddMovieDelegate?
    
    @IBAction func handleAddMovieAction(_ sender: UIButton) {
        guard let movieName = movieNameTextField.text,
            !movieName.isEmpty else { return }
        
        if let delegate = self.delegate {
            delegate.didAddMovie(Movie(name: movieName))
        } else {
            dismiss(animated: true)
        }
    }
}
