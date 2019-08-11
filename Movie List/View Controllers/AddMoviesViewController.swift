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

class AddMoviesViewController: UIViewController {
    
    @IBOutlet weak var movieTitleTextField: UITextField!
    
    var delegate: AddMoviesDelegate?

    override func viewDidLoad() {
        super.viewDidLoad()
        
        movieTitleTextField.delegate = self as? UITextFieldDelegate
        
    }
    
    

   
  
    
    @IBAction func addMovieTapped(_ sender: Any) {
        //Take the information passed in by the user and add it to the array of movies to be shown by the MoviesViewController.
        guard let name = movieTitleTextField.text, !name.isEmpty else { return }
        
        let newMovie = Movie(name: name, watched: true)
        
        delegate?.movieWasCreated(newMovie)
        
        movieTitleTextField.text = ""
        
    }
    
    // MARK: - Navigation
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "addMovieSegue" {
            if let addMovieVC = segue.destination as? AddMoviesViewController {
                addMovieVC.delegate = self as? AddMoviesDelegate
            }
        }
    }
    

}
