//
//  MovieListTableViewController.swift
//  Movie List
//
//  Created by conner on 2/8/20.
//  Copyright © 2020 conner. All rights reserved.
//

import UIKit

class MovieListTableViewController: UITableViewController, AddMovieDelegate {
    
    @IBOutlet weak var movieTable: UITableView!
    
    var movies: [Movie] = []

    override func viewDidLoad() {
        super.viewDidLoad()
        self.movieTable.delegate = self
        self.movieTable.dataSource = self
    }
    
    func addMovie(movie: Movie) {
        movies.append(movie)
        movieTable.reloadData()
    }
}

extension MovieListTableViewController {
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return movies.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "movieCell", for: indexPath) as? MoviesListTableViewCell else { return UITableViewCell() }
        cell.movie = movies[indexPath.row]
        return cell
    }
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "addSegue" {
            if let addMovieViewController = segue.destination as? AddMovieViewController {
            addMovieViewController.delegate = self
            }
        }
    }
    
    // Stretch goal Delete button
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            movies.remove(at: indexPath.row)
            movieTable.beginUpdates()
            movieTable.deleteRows(at: [indexPath], with: .automatic)
            movieTable.endUpdates()
        }
    }
}
