//
//  MovieListViewController.swift
//  Movie List
//
//  Created by Bronson Mullens on 4/17/20.
//  Copyright © 2020 Lambda School. All rights reserved.
//

import UIKit

class MovieListViewController: UIViewController {
    
    // Array that contains our Movie objects
    var allMovies: [Movie] = []

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBOutlet weak var tableView: UITableView!
    
    
    // MARK: - Navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "AddMovieModalSegue" {
            if let movieVC = segue.destination as? AddMovieViewController {
                movieVC.delegate = self
            }
        }
    }

}

extension MovieListViewController: UITableViewDataSource {
    
    // The number of rows in our table view
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        allMovies.count
    }
    
    // Recycles cells as the user swipes down
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "MovieCell", for: indexPath) as? MovieTableViewCell else { return UITableViewCell() }
        let newMovie = allMovies[indexPath.row]
        cell.movie = newMovie
        return cell
    }
    
}

extension MovieListViewController: AddMovieDelegate {
    
    //Adds movies to our Movie array and refreshes the table
    func newMovieAdded(_ movie: Movie) {
        allMovies.append(movie)
        tableView.reloadData()
    }
    
}
