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
    var movieController = MovieController()
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
            guard let movieDetailVC = segue.destination as? MovieDetailViewController, let indexPath = tableView.indexPathForSelectedRow else { return }
            let movie = movieController.movies[indexPath.row]
            movieDetailVC.delegate = self
            movieDetailVC.movie = movie
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
        return movieController.movies.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: Cells.movieCell, for: indexPath) as? MovieCell else { return UITableViewCell() }
        let movie = movieController.movies[indexPath.row]
        cell.movie = movie
        cell.delegate = self
        return cell
    }
}

extension MovieListViewController: MovieDelegate {
    func didAdd(_ movie: Movie) {
        movieController.movies.append(movie)
        tableView.reloadData()
    }
    
    func didUpdate(_ movie: Movie, with name: String) {
        guard let indexPath = tableView.indexPathForSelectedRow else { return }
        movieController.movies[indexPath.row].name = name
        tableView.reloadRows(at: [indexPath], with: .automatic)
    }
}

extension MovieListViewController: SeenSwitchDelegate {
    func toggleSeen(on cell: MovieCell) {
        guard let indexPath = tableView.indexPath(for: cell) else { return }
        let movie = movieController.movies[indexPath.row]
        movieController.toggleSeen(movie)
        tableView.reloadRows(at: [indexPath], with: .automatic)
    }
}
