//
//  AddMovieViewController.swift
//  Movie List
//
//  Created by Donella Barcelo on 11/8/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import UIKit

class AddMovieViewController: UIViewController {
    
    @IBOutlet weak var movieTitleTextField: UITextField!
    @IBOutlet weak var addMovieButton: UIButton!
    
    var movieController: MovieController?

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    // Actions
    @IBAction func addMovieTapped(_ sender: Any) {
        guard let movieTitleText = movieTitleTextField.text else { return }
        if movieTitleText != "" {
            movieController?.createMovie(name: movieTitleText)
            navigationController?.popViewController(animated: true)
        } else { return }
    }
}
