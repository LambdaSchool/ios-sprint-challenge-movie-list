//
//  AddMovieViewController.swift
//  Movie List
//
//  Created by Tobi Kuyoro on 08/11/2019.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import UIKit

protocol AddMovieDelegate {
    func movieWasAdded(movie: Movie)
}

class AddMovieViewController: UIViewController {
    
    @IBOutlet weak var movieNameLabel: UITextField!
    
    var delegate: AddMovieDelegate?

    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    @IBAction func addMovieTapped(_ sender: Any) {
        guard let movie = movieNameLabel.text,
            !movie.isEmpty else { return }
        
        var newMovie = Movie(name: movie)
        
        delegate?.movieWasAdded(movie: newMovie)
    }
}

extension AddMovieViewController: UITextFieldDelegate {
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        
        return true
    }
}
