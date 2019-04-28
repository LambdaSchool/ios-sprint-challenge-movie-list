//
//  MovieViewController.swift
//  Movie List
//
//  Created by Ryan Murphy on 4/26/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import UIKit

class MovieViewController: UIViewController {

    let movieControler = MovieController()
    
    
    @IBOutlet var movieNameTextField: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func addMovieButtonTapped(_ sender: Any) {
        
        if let name = movieNameTextField.text{
        
        movieControler.createMovie(withMovie: name)
            print(movies)
        movieNameTextField.text = ""
        }
        
        //creates a new movie from movieTextInput
        
    }
    
    

}
