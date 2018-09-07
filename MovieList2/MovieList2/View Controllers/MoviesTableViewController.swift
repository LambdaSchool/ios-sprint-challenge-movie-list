//
//  MoviesTableViewController.swift
//  MovieList2
//
//  Created by Welinkton on 9/7/18.
//  Copyright © 2018 Jerrick Warren. All rights reserved.
//

import UIKit

class MoviesTableViewController: UITableViewController, MovieListProtocol, MovieTableCellDelegate {
    
    var movieController: MovieController?
    
    // method to update custom movie cell
    func updateMovieCell(for cell: MoviesTableViewCell) {
        guard let indexPath = tableView.indexPath(for: cell),
            let movie = movieController?.movies[indexPath.row] else {return}
        movieController?.toggleIsSeen(movie: movie)
            tableView.reloadRows(at: [indexPath], with: .automatic)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func viewDidAppear(_ animated: Bool) {
        tableView.reloadData()
    }

    // MARK: - Table view data source
    
    // references array to see how many rows
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return movieController?.movies.count ?? 0
    }

    // grabs the cell.. so that you can customize it
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
       guard let cell = tableView.dequeueReusableCell(withIdentifier: "MovieCell", for: indexPath) as? MoviesTableViewCell,
        let movie = movieController?.movies[indexPath.row] else {return UITableViewCell()}
        
        // Configure the cell...
        cell.movie = movie
        cell.delegate = self  // gets instructions from delegate

        // updates its own cell
        cell.updateViews()
        return cell
    }
    
    // Function to delete Cells
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            guard let movie = movieController?.movies[indexPath.row] else {return}
            
            //will Delete movie name
            movieController?.deleteMovie(movie: movie)
            
            //Deletes the cell
            tableView.deleteRows(at: [indexPath], with: .automatic)
        }
    }
}
