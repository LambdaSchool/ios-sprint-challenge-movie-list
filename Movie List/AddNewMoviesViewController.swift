//
//  AddNewMoviesViewController.swift
//  Movie List
//
//  Created by Daniela Parra on 8/31/18.
//  Copyright © 2018 Lambda School. All rights reserved.
//

import UIKit

class AddNewMoviesViewController: UIViewController, MovieControllerProtocol {

    
    @IBAction func addNewMovie(_ sender: Any) {
        guard let name = nameTextField.text else {return}
        
        movieController?.createAMovie(name: name)
        
        view.endEditing(true)
    }
    
    @IBOutlet weak var nameTextField: UITextField!
    
    var movieController: MovieController?
}
