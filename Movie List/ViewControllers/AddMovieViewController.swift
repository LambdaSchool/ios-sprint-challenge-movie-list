//
//  AddMovieViewController.swift
//  MoviesTry9
//
//  Created by morse on 4/26/19.
//  Copyright © 2019 morse. All rights reserved.
//

import UIKit

class AddMovieViewController: UIViewController, MovieControllerProtocol {
    
    var movieController: MovieController?
    @IBOutlet var movieTitleTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func addMovieButtonTapped(_ sender: Any) {
        guard let title = movieTitleTextField.text, !title.isEmpty else { return }
        
        movieController?.createMovie(with: title)
        
        movieTitleTextField.text = ""
    }
}
