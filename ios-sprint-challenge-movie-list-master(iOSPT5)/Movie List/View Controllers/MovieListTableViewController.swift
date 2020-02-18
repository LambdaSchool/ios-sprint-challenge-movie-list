//
//  MovieListTableViewController.swift
//  Movie List
//
//  Created by David Williams on 2/9/20.
//  Copyright © 2020 Lambda School. All rights reserved.
//

import UIKit


class MovieListTableViewController: UIViewController, UITableViewDataSource, UITableViewDelegate, MoviesTableViewCellDelegate {
    
    let movieController = MovieController()
    
    @IBOutlet var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.dataSource = self
    }
    
    override func viewWillAppear(_ animated: Bool) {
        tableView.reloadData()
        super.viewWillAppear(animated)
    }
    
    func toggleHasBeenSeen(for cell: MoviesTableViewCell) {
        guard let index = tableView.indexPath(for: cell) else { return }
        let movie = movieController.movies[index.row]
        movieController.updateHasBeenSeen(for: movie)
        tableView.reloadRows(at: [index], with: .automatic)
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return movieController.movies.count
    }
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "MovieCell", for: indexPath) as? MoviesTableViewCell else { return UITableViewCell() }
       // let movie = movies[indexPath.row]
        //let movie = movieController.sortMovies[indexPath.row]
        let movie = moviesFor(indexPath: indexPath)
        cell.delegate = self
        cell.movie = movie
        return cell
    }
    
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            let movie = movieController.movies[indexPath.row]
           // let movie = movieController.sortMovies[indexPath.row]
            movieController.deleteMovie(which: movie)
        }
        tableView.reloadData()
    }
    var movies: Movie?
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        switch segue.identifier {
        case "AddMovieSegue":
            if let addMovieVC = segue.destination as? AddMovieViewController {
                addMovieVC.movieConntroller = movieController
            }
        case "EditMovieSegue":
            if let editMovieVC = segue.destination as? AddMovieViewController {
                if let indexPath = tableView.indexPathForSelectedRow {
                   // editMovieVC.movie = movieController.movies[indexPath.row]
                    editMovieVC.movie = moviesFor(indexPath: indexPath)
                   // editMovieVC.movie = movieController.sortMovies[indexPath.row]
                    editMovieVC.movieConntroller = movieController
                }
            }
        default:
            break
        }
    }
    
    private func moviesFor(indexPath: IndexPath) -> Movie {
        var movie: Movie?
        movie = movieController.sortMovies[indexPath.row]
        return movie!
    }
    
}

