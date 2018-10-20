//
//  AddMovieViewContoller.swift
//  Movie List
//
//  Created by Rick Wolter on 10/5/18.
//  Copyright © 2018 Lambda School. All rights reserved.
//

import UIKit

class AddMovieViewController: UIViewController, MovieControllerProtocol {
    
    var movieController: MovieController?
    
    @IBOutlet weak var movieTitleTextField: UITextField!
    
    @IBAction func addMovie(_ sender: Any) {
        guard let movieTitle = movieTitleTextField.text else { return }
        movieController?.addMovie(name: movieTitle, hasWatched: false)
    }
}
