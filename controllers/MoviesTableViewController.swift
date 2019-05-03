//
//  MoviesTableViewController.swift
//  Movie List
//
//  Created by Brian Vilchez on 5/2/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import UIKit

class MoviesTableViewController: UITableViewController {

    //MARK:Properties
    var movieController = MovieController()
    
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        tableView.reloadData()
    }

    // MARK: - Table view data source

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return movieController.movies.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "MovieCell", for: indexPath)
        let movie = movieController.movies[indexPath.row]
        cell.textLabel?.text = movie.movie
        return cell
    }

    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            let movie = movieController.movies[indexPath.row]
            movieController.deleteMovie(withTitle: movie)
            tableView.deleteRows(at: [indexPath], with: .automatic)
        }
    }
    
// MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "AddMovie" {
            
            guard let AddMovieVC = segue.destination as? AddMovieViewController else {return}
            AddMovieVC.movieController = movieController
        }
    }
}
