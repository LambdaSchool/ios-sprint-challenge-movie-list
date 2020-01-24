//
//  MoviesViewController.swift
//  Movie List
//
//  Created by Keri Levesque on 1/24/20.
//  Copyright © 2020 Lambda School. All rights reserved.
//

import UIKit

class MovieViewController: UIViewController {

// this connects the table view to code
    @IBOutlet var moviesTableView: UITableView!
    
    // need an empty array to store the movies, also type of the Movie struct
    var movies: [Movie] = []
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "addMovieSegue" {
            if let addMovieVC = segue.destination as? AddMoviesViewController {
                addMovieVC.addMovie = self 
            }
        }
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }


}
