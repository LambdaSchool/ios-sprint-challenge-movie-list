//
//  AddNewMoviesViewController.swift
//  Movie List
//
//  Created by Daniela Parra on 8/31/18.
//  Copyright © 2018 Lambda School. All rights reserved.
//

import UIKit

class AddNewMoviesViewController: UIViewController, MovieControllerProtocol {

    //Creates a new Movie from information provided by user.
    @IBAction func addNewMovie(_ sender: Any) {
        guard let name = nameTextField.text else {return}
        
        movieController?.createAMovie(name: name)
        view.endEditing(true)
    }
    
    //Outlet to the text field where user enters movie name.
    @IBOutlet weak var nameTextField: UITextField!
    
    //Conforms to MovieControllerProtocol
    var movieController: MovieController?
}
