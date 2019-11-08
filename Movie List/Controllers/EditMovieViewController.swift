//
//  EditMovieViewController.swift
//  Movie List
//
//  Created by Donella Barcelo on 11/8/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import UIKit

class EditMovieViewController: UIViewController {
    
    @IBOutlet weak var editMovieTextField: UITextField!
    @IBOutlet weak var saveButton: UIButton!
    
    var movieController: MovieController?
    var movie: Movie?

    override func viewDidLoad() {
        super.viewDidLoad()
        editMovieTextField.text = movie?.movieName
    }
    
    // Actions
    @IBAction func saveButtonTapped(_ sender: Any) {
        guard let editMoiveText = editMovieTextField.text,
        let movie = movie else { return }
        if editMoiveText != "" {
            movieController?.editMovieName(for: movie, newNme: editMoiveText)
            navigationController?.popViewController(animated: true)
        }
    }
}
