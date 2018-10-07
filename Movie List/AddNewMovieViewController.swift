//
//  AddNewMovieViewController.swift
//  Movie List
//
//  Created by Paul Yi on 10/5/18.
//  Copyright © 2018 Lambda School. All rights reserved.
//

import UIKit

class AddNewMovieViewController: UIViewController, MovieControllerProtocol {
    var movieController: MovieController?
    

    @IBAction func addNewMovie(_ sender: Any) {
        guard let name = movieTextField.text else { return }
        
        movieController?.createMovie(name: name)
        view.endEditing(true)
    }
    
    @IBOutlet weak var movieTextField: UITextField!
    
}
