//
//  AddMovieViewController.swift
//  Movie List
//
//  Created by Joshua Rutkowski on 11/24/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import UIKit

class AddMovieViewController: UIViewController {

    @IBOutlet var movieTitleTextField: UITextField!
    @IBOutlet var addMovieButton: UIButton!
    var movieController: MovieController?
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func addMovieTapped(_ sender: Any) {
        guard let movieTitleText = movieTitleTextField.text else { return }
        if movieTitleText != "" {
            movieController?.createMovie(name: movieTitleText)
            navigationController?.popViewController(animated: true)
        } else {
            return
        }
    }
}
