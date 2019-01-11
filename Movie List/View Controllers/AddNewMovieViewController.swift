//
//  AddNewMovieViewController.swift
//  Movie List
//
//  Created by Paul Yi on 1/11/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import UIKit

class AddNewMovieViewController: UIViewController, MovieControllerProtocol {
    var movieController: MovieController?

    @IBOutlet var movieTextField: UITextField!

    @IBAction func addNewMovie(_ sender: Any) {
        guard let name = movieTextField.text else { return }
        
        movieController?.createMovie(name: name)
        view.endEditing(true)
    }
    
    
    
}
