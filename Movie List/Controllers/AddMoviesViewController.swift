//
//  AddMoviesViewController.swift
//  Movie List
//
//  Created by David Oliver Doswell on 7/27/18.
//  Copyright © 2018 Lambda School. All rights reserved.
//

import UIKit

class AddMoviesViewController: UIViewController, MovieProtocol {
    
    var movieController: MovieController?
    
    @IBOutlet weak var addMovieLabel: UILabel!
    
    @IBOutlet weak var addMovieTextField: UITextField!
    
    @IBAction func addMovieButton(_ sender: Any) {
        guard let movieTitle = addMovieTextField.text else { return }
        movieController?.addANewMovie(movie: movieTitle)
    }

    override func viewDidLoad() {
        super.viewDidLoad()
    }
}
