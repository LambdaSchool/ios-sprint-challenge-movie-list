//
//  MovieViewController.swift
//  Movie List
//
//  Created by Ryan Murphy on 4/26/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import UIKit

class MovieViewController: UIViewController {

    let movieController = MovieController()
    var movies: [Movie] = []
    
    @IBOutlet var movieTextInput: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func addMovieButtonPressed(_ sender: Any) {
        
        guard let name = movieTextInput.text,
            !name.isEmpty else { return }
        
        movieController.createMovie(withMovie: name)
        //creates a new movie from movieTextInput
    }
    
    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "addMovie" {
            guard let DetailVC = segue.destination as? MovieViewController,
                let cell = sender as? MovieTableViewController else { return }
            
            DetailVC.movieController.movies = cell.movieController.movies
        }
//
//        }
//        if segue.identifier == "addMovie" {
//            guard let DetailVC = segue.destination as? MovieTableViewController,
//                let cell = sender as? MovieViewController else { return }
//
//            movieDetailVC.movieController.movies = cell.movies
//        }
        
        // Get the new view controller using segue.destination.
        
        
        // Pass the selected object to the new view controller.
    }
    

}
