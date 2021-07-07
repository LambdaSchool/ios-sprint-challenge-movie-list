//
//  AddMoviesViewController.swift
//  Movie List
//
//  Created by Bobby Keffury on 8/3/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import UIKit

protocol AddMoviesDelegate {
    func movieWasCreated(_ movie: Movie)
}

class AddMoviesViewController: UIViewController, UITextFieldDelegate {
    
    
    
    @IBOutlet weak var movieTitleTextField: UITextField!
    
    var addMovie: AddMoviesDelegate?

    override func viewDidLoad() {
        super.viewDidLoad()
        
        movieTitleTextField.delegate = self 
        
    }
    
    

   
  
    
    @IBAction func addMovieTapped(_ sender: Any) {
        //Take the information passed in by the user and add it to the array of movies to be shown by the MoviesViewController.
        guard let name = movieTitleTextField.text, !name.isEmpty else { return }
        
        let movie = Movie(name: name, watched: true)
        
        addMovie?.movieWasCreated(movie)
        
        movieTitleTextField.text = ""
        
        navigationController?.popToRootViewController(animated: true)
        
    }
    
    
    
    

}
