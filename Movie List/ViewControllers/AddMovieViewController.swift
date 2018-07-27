//
//  AddMovieViewController.swift
//  Movie List
//
//  Created by Jeremy Taylor on 7/27/18.
//  Copyright © 2018 Lambda School. All rights reserved.
//

import UIKit

class AddMovieViewController: UIViewController, MovieControllerProtocol {
    
    
    
    // MARK: - Properties
    
    @IBOutlet weak var movieTitleTextField: UITextField!
    var movieController: MovieController?
    

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    @IBAction func addMovie(_ sender: Any) {
        guard let movie = movieTitleTextField.text,
        let movieController = movieController else { return }
        
        
        movieController.create(title: movie)
    }
}
