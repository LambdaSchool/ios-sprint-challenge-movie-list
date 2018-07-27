//
//  AddNewMoviesViewController.swift
//  Movie List
//
//  Created by Samantha Gatt on 7/27/18.
//  Copyright © 2018 Lambda School. All rights reserved.
//

import UIKit

class AddNewMoviesViewController: UIViewController, MovieControllerProtocol {

    override func viewDidLoad() {
        super.viewDidLoad()

        
    }
    
    @IBAction func addNewButtonTapped(_ sender: Any) {
        
        guard let movieTitle = movieTitleTextField.text else { return }
        
        movieController?.addMovie(title: movieTitle, isSeen: false)
    }
    
    
    @IBOutlet weak var movieTitleTextField: UITextField!
    
    var movieController: MovieController?
}
