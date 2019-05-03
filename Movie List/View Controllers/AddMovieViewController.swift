//
//  AddMovieViewController.swift
//  Movie List
//
//  Created by Chris Price on 5/3/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import UIKit

class AddMovieViewController: UIViewController {
    
    var movieController: MovieController?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    

    @IBAction func addMovieButtonPressed(_ sender: Any) {
        guard let movieString = movieTitleTextField.text else { return }
        
        movieController?.createMovie(with: movieString)
    }
    
    
    @IBOutlet weak var movieTitleTextField: UITextField!
    
    
}

/* Referenced Paul's Notes project NotesViewController for help with protocols for the add button functionality. */
