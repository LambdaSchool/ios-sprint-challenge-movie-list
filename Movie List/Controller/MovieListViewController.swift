//
//  MovieListViewController.swift
//  Movie List
//
//  Created by Chad Rutherford on 11/8/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import UIKit

class MovieListViewController: UIViewController {
    
    // --- --- --- --- --- --- --- --- --- --- --- --- --- --- ---
    // MARK: - Properties
    var movies = [
        Movie(name: "Back to the Future"),
        Movie(name: "The Matrix"),
        Movie(name: "Beauty and the Beast"),
        Movie(name: "Toy Story 4"),
        Movie(name: "Avengers: Endgame")]
                  
    
    // --- --- --- --- --- --- --- --- --- --- --- --- --- --- ---
    // MARK: - Outlets
    @IBOutlet weak var tableView: UITableView!
    
    // --- --- --- --- --- --- --- --- --- --- --- --- --- --- ---
    // MARK: - View Controller Life Cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
        tableView.dataSource = self
    }
    
    // --- --- --- --- --- --- --- --- --- --- --- --- --- --- ---
    // MARK: - Navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        switch segue.identifier {
        case Segues.addMovieSegue:
            guard let movieDetailVC = segue.destination as? MovieDetailViewController else { return }
            movieDetailVC.delegate = self
        case Segues.editMovieSegue:
            print("Edit Movie Segue")
        default:
            break
        }
    }
}

extension MovieListViewController: UITableViewDelegate, UITableViewDataSource {
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return movies.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: Cells.movieCell, for: indexPath) as? MovieCell else { return UITableViewCell() }
        let movie = movies[indexPath.row]
        cell.movie = movie
        return cell
    }
}

extension MovieListViewController: AddMovieDelegate {
    func didAdd(_ movie: Movie) {
        movies.append(movie)
        tableView.reloadData()
    }
}
