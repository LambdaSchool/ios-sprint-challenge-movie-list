//
//  MovieTableViewController.swift
//  Movie List
//
//  Created by Hayden Hastings on 5/3/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import UIKit

class MovieTableViewController: UITableViewController {

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        tableView.reloadData()
        
        tableView.delegate = self
    }

    // MARK: - Table view data source

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return movieController.movies.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "MovieCell", for: indexPath) as? MovieTableViewCell else { return UITableViewCell() }
        
        let movie = movieController.movies[indexPath.row]
        
        cell.movie = movie
        cell.delegate = self
        
        return cell
    }

    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            
            let movie = movieController.movies[indexPath.row]
            movieController.delete(movie: movie)
            
            tableView.deleteRows(at: [indexPath], with: .fade)
        }
    }

    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "ToAddMovie" {
            guard let toAddMovieVC = segue.destination as? AddMovieViewController else { return }
            
            toAddMovieVC.movieController = movieController
        }
    }
    
    var movieController = MovieController()
}


extension MovieTableViewController: MovieTableViewCellDelegate {
    func movieButtonWasPressed(on cell: MovieTableViewCell) {
        
        guard let indexPath = tableView.indexPath(for: cell) else { return }
        let movie = movieController.movies[indexPath.row]
        
        movieController.toggleIsSeen(for: movie)
        
        tableView.reloadRows(at: [indexPath], with: .automatic)
    }
}
