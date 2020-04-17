//
//  AddMovieViewController.swift
//  movieList
//
//  Created by Marissa Gonzales on 4/17/20.
//  Copyright © 2020 Joe Veverka. All rights reserved.
//

import UIKit

protocol NewMovieDelegate {
    func addedAMovie(movie: Movie)
}

class AddMovieViewController: UIViewController {
    
    var delegate: NewMovieDelegate?
    
    // Add Movie Text Field
    @IBOutlet weak var addMovieTextField: UITextField!
    
    // Add New Movie Button
    @IBAction func addNewMovieButton(_ sender: Any) {
        
        // Unwrapping Text Field 
        guard let newMovie = addMovieTextField.text else { return }
        
        let addedMovie: Movie = Movie(name: newMovie, seenOrNot: false)
        
        delegate?.addedAMovie(movie: addedMovie)

    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
    }

}
