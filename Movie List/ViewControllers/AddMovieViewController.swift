//
//  AddMovieViewController.swift
//  Movie List
//
//  Created by Clayton Watkins on 4/17/20.
//  Copyright © 2020 Lambda School. All rights reserved.
//

import UIKit
//Setting up our delegate so we can be the delegator to the table view
protocol AddMovieDelegate {
    func movieWasAdded(_ movie: Movie)
}

class AddMovieViewController: UIViewController {
        
    var delegate: AddMovieDelegate?
    
    @IBOutlet weak var addMovieTextField: UITextField!
    
    @IBAction func addMovieButtonTapped(_ sender: Any) {
        //Unrwapping the text that is typed into our Movie Text field
        guard let movie = addMovieTextField.text,
            !movie.isEmpty else { return }
        let newMovie = Movie(movieName: movie, movieSeen: false)
        //Here we are sending the information back to the table view
        delegate?.movieWasAdded(newMovie)
        dismiss(animated: true, completion: nil)
    }
}
