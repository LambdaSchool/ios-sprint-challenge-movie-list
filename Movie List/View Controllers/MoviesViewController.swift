//
//  MoviesViewController.swift
//  Movie List
//
//  Created by Bobby Keffury on 8/4/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import UIKit

class MoviesViewController: UIViewController {
    
    // Table view outlet
    @IBOutlet weak var moviesTableView: UITableView!
    
    // Variable to reference the movie struct we created in the model.
    var movies: [Movie] = []

    override func viewDidLoad() {
        super.viewDidLoad()

        
    }
    
    
    
    // Displays number of rows and number of cells in the table view depending on how many movies are created.
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return movies.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "MovieCell", for: indexPath) as? MovieTableViewCell else { return UITableViewCell() }
        
        let movie = movies[indexPath.row]
        cell.movie = movie
        
        return cell
    }
    

    
    // MARK: - Navigation

    // segue from the MoviesViewController to AddMoviesViewController.  Trying to implement an Unwind segue as a stretch goal.
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "AddMovieViewSegue" {
            if let addMoviesVC = segue.destination as? AddMoviesViewController {
                addMoviesVC.movies = movies
            }
        }
    }
 

}
