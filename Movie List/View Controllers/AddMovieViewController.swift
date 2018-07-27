//
//  AddMovieViewController.swift
//  Movie List
//
//  Created by Conner on 7/27/18.
//  Copyright © 2018 Lambda School. All rights reserved.
//

import UIKit

class AddMovieViewController: UIViewController, MovieControllerProtocol {

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func addMovie(_ sender: Any) {
        guard let movieName = addMovieTextField.text else { return }
        
        movieController?.addMovie(movieName: movieName, isSeen: "Seen")
    }
    
    @IBOutlet var addMovieTextField: UITextField!
    var movieController: MovieController?
}
