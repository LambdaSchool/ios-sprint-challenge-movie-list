//
//  AddMoviesViewController.swift
//  Movie List
//
//  Created by Sameera Roussi on 4/26/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import UIKit

class AddMoviesViewController: UIViewController {

    @IBOutlet weak var movieTitleTextField: UITextField!
    
    @IBAction func addMovieButtonTapped(_ sender: Any) {
        guard let newMovie = movieTitleTextField.text, !newMovie.isEmpty else { return }
        MovieData.shared.addMovie(newMovie)
        movieTitleTextField.text = ""
        
    }
    
    @IBAction func resetMovieDataButtonTapped(_ sender: Any) {
        MovieData.shared.resetMovieList()
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }


}
