//
//  AddNewMovieViewController.swift
//  Movie List
//
//  Created by De MicheliStefano on 27.07.18.
//  Copyright © 2018 Lambda School. All rights reserved.
//

import UIKit

class AddNewMovieViewController: UIViewController, MovieControllerProtocol {
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        
    }
    
    @IBAction func createNewMovie(_ sender: Any) {
        guard let movieTitle = movieTitleTextField.text else { return }
        movieController?.create(title: movieTitle)
        print(movieController?.movies)
    }
    
        
    // MARK: - Properties
    
    var movieController: MovieController?
    @IBOutlet weak var movieTitleTextField: UITextField!
    
}
