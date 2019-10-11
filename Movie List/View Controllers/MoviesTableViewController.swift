//
//  MoviesTableViewController.swift
//  Movie List
//
//  Created by Brandi on 10/11/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import UIKit

class MoviesTableViewController: UIViewController {
    
    var movies: [Movie] = []

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    
        override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
            if segue.identifier == "AddMovieModalSegue" {
                if let addMovieVC = segue.destination as? AddMovieViewController {
                    addMovieVC.delegate = self
                }
            } else if segue.identifier == "ShowMovieDetailSegue" {
                if let indexPath = tableView.indexPathForSelectedRow,
                    let movieDetailVC = segue.destination as?
                        MovieDetailViewController {
                    movieDetailVC.movie = movies[indexPath.row]
                }
            }
        }
}

extension MoviesTableViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return movies.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "MovieCell", for: indexPath) as?
            MovieTableViewCell else { return UITableViewCell() }
        
        let movie = movies[indexPath.row]
        cell.movie = movie
    }
}

extension MovieTableViewController: AddMovieDelegate {
    func movieWasAdded(_ movie: Movie) {
        movies.append(movie)
        dismiss(animated: true, completion: nil)
        
        tableView.reloadData()
    }
}
