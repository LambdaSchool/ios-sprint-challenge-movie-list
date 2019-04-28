//
//  AddMovieViewController.swift
//  Movie List
//
//  Created by Brian Vilchez on 4/26/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import UIKit

class AddMovieViewController: UIViewController {
  
    /// provides communication with model movieController
      var movieName = MovieController()
  
    
    @IBOutlet weak var enteredMovieTextField: UITextField!
    

    @IBAction func AddMovieButtonPressed(_ sender: Any) {
        
        guard let movie = enteredMovieTextField.text else   { return }
        
      movieName.assignMovie(with: movie)
        
    }
    
override func viewDidLoad() {
        super.viewDidLoad()
    
    }
    
}
