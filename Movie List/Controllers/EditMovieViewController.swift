//
//  EditMovieViewController.swift
//  Movie List
//
//  Created by Joshua Rutkowski on 11/24/19.//  Copyright © 2019 Lambda School. All rights reserved.
//

import UIKit

class EditMovieViewController: UIViewController {

    @IBOutlet var editMovieTextField: UITextField!
    @IBOutlet var saveChangesButton: UIButton!
    var movieController: MovieController?
    var movie: Movie?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        editMovieTextField.text = movie?.movieName
    }
    
    @IBAction func saveChangesTapped(_ sender: Any) {
        guard let editMovieText = editMovieTextField.text,
            let movie = movie else { return }
        if editMovieText != "" {
            movieController?.editMovieName(for: movie, newName: editMovieText)
            navigationController?.popViewController(animated: true)
        }
    }

}
