//
//  AddMovieViewController.swift
//  Movie List
//
//  Created by Ryan Dutson on 8/16/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import UIKit

class AddMovieViewController: UIViewController {
    
    @IBOutlet weak var movieTitleTextField: UITextField!
    
    var movieController: MovieController?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    @IBAction func addMovieButtonTapped(_ sender: Any) {
        guard let newMovie = movieTitleTextField.text, movieTitleTextField.text != "" else { return }
        let newMovieAdded = MovieList(movieName: newMovie)
        movieController?.movies.append(newMovieAdded)
        navigationController?.popViewController(animated: true)
    }
    
}
