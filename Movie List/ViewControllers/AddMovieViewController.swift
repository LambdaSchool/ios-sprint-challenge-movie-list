//
//  AddMovieViewController.swift
//  Movie List
//
//  Created by Sammy Alvarado on 4/17/20.
//  Copyright © 2020 Lambda School. All rights reserved.
//

import UIKit


class AddMovieViewController: UIViewController {

    @IBOutlet weak var movieTitleTextField: UITextField! // created this outlet to past movie information to table cell 
    
    
    var movieController: MovieController?
    
    @IBAction func addMovieTapped(_ sender: Any) {
        guard let movieName = movieTitleTextField.text,
        !movieName.isEmpty else { return }
    
        movieController?.createMovie(withTitle: movieName)
        
        self.navigationController?.popViewController(animated: true)
        

    }
}


