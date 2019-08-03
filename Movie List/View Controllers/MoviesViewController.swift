//
//  MoviesViewController.swift
//  Movie List
//
//  Created by Bobby Keffury on 8/3/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import UIKit

class MoviesViewController: UIViewController {

    
    var movies: [Movie] = []
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

      
    }
    
    // Need to set the movieCell.text = what the user entered in the AddMoviesViewController.

    
    // MARK: - Navigation
    
    //Attempting to use Unwind Segue
    
    @IBAction func unwindToAddMovies(segue: UIStoryboardSegue) {
        
    }
    
    @IBAction func addMovieVCTapped(_ sender: Any) {
        self.performSegue(withIdentifier: "unwindToAddMovies", sender: self)
    }
    

}


