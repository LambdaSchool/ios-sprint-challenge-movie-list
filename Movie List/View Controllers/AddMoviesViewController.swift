//
//  AddMoviesViewController.swift
//  Movie List
//
//  Created by Bobby Keffury on 8/3/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import UIKit

class AddMoviesViewController: UIViewController {
    
    @IBOutlet weak var movieTitleTextField: UITextField!
    
    
    var movies: [Movie] = []

    override func viewDidLoad() {
        super.viewDidLoad()

        
    }
    
    

    
    // MARK: - Navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "MoviesViewSegue" {
            if let moviesVC = segue.destination as? MoviesViewController {
                moviesVC.movies = movies
            }
        }
    }
    
    @IBAction func addMovieTapped(_ sender: Any) {
        //Take the information passed in by the user and add it to the array of movies to be shown by the MoviesViewController.
        guard let name = movieTitleTextField.text, !name.isEmpty else { return }
        
        let newMovie = Movie(name: name, watched: true)
        
        movies.append(newMovie)
        
        movieTitleTextField.text = ""
        
    }
    

}
