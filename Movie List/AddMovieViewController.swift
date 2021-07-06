//
//  AddMovieViewController.swift
//  Movie List
//
//  Created by Kobe McKee on 4/28/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import UIKit

class AddMovieViewController: UIViewController, MovieControllerProtocol {

    var movieController: MovieController?
    
    @IBOutlet weak var newMovieTextField: UITextField!
    
    @IBAction func addMovieButtonPressed(_ sender: Any) {
        guard let movieTitle = newMovieTextField.text else { return }
        movieController?.createMovie(title: movieTitle)
        newMovieTextField.text = ""
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

}
