//
//  MoviesTableViewController.swift
//  MovieList
//
//  Created by Joshua Franklin on 8/16/19.
//  Copyright © 2019 AMSU. All rights reserved.
//

import UIKit

class MoviesTableViewController: UITableViewController {
    
    let movieController = MovieController()

    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.reloadData()
        
    }
    
    
    // MARK: - Table view data source

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return movieController.movies.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "MovieCell", for: indexPath) as? MovieTableViewCell else {return UITableViewCell()}
        let movie = movieController.movies[indexPath.row]
        cell.titleLabel.text = movie.title
        return cell
    }
    
   override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            movieController.movies.remove(at: indexPath.row)
            tableView.deleteRows(at: [indexPath], with: .fade)
        }
    }
    

    
    // MARK: - Navigation
    
   override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "AddMovieSegue" {
          let addMovieVC = segue.destination as? AddMovieViewController
            addMovieVC?.movieController = movieController
        } else if  segue.identifier == "MovieDetailSegue" {
            guard let indexPath = tableView.indexPathForSelectedRow else {return}
            let movieDetailVC = segue.destination as? MovieDetailViewController
            movieDetailVC?.movie = movieController.movies[indexPath.row]
    }
 }
}
