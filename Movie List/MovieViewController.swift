//
//  MovieViewController.swift
//  Movie List
//
//  Created by Thomas Cacciatore on 4/26/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import UIKit

class MovieViewController: UIViewController, MovieControllerProtocol {
    var movieController: MovieController?
    

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    
    @IBAction func addMovieButtonTapped(_ sender: Any) {
        
        guard let movieName = addMovieTextField.text else { return }
        
        movieController?.createMovie(with: movieName)
        addMovieTextField.text = ""
       
    }
    
    @IBOutlet weak var addMovieLabel: UILabel!
    
    @IBOutlet weak var addMovieTextField: UITextField!
    

}
