//
//  AddMovieViewController.swift
//  Movie List
//
//  Created by Andrew Dhan on 7/27/18.
//  Copyright © 2018 Lambda School. All rights reserved.
//

import UIKit

class AddMovieViewController: UIViewController, MovieControllerProtocol {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    
    @IBAction func addMovie(_ sender: Any) {
        guard let movieTitle = movieTitleLabel.text else  {return}
        movieController?.createMovie(withTitle: movieTitle)
        movieTitleLabel.text = ""
    }
    
  
    
    
    //MARK: - Properties
    
    var movieController: MovieController?
    
    @IBOutlet weak var movieTitleLabel: UITextField!
    
}
