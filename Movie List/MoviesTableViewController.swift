//
//  MoviesTableViewController.swift
//  Movie List
//
//  Created by Daniela Parra on 8/31/18.
//  Copyright © 2018 Lambda School. All rights reserved.
//

import UIKit

class MoviesTableViewController: UITableViewController, MovieControllerProtocol, MovieTableCellDelegate {

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        tableView.reloadData()
    }
    
    //Updates cell information after cell notifies TVC an action has happened
    func updateCell(for cell: MoviesTableViewCell) {
        guard let indexPath = tableView.indexPath(for: cell),
            let movie = movieController?.movies[indexPath.row] else {return}
        
        //Calls movie Controller to update movie object after cell has been clicked.
        movieController?.update(movie: movie)
        tableView.reloadRows(at: [indexPath], with: .automatic)
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return movieController?.movies.count ?? 0
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        //Unwrap cell and movie to update the cell.
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "MovieCell", for: indexPath) as? MoviesTableViewCell,
            let movie = movieController?.movies[indexPath.row] else {return UITableViewCell()}
        
        //Call cell to update itself.
        cell.updateViews(movie: movie)
        
        //Set up delegate relationship with cell.
        cell.delegate = self
        
        return cell
    }
    
    //Delete cell functionality.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            guard let movie = movieController?.movies[indexPath.row] else {return}
            
            //Deletes movie from movie controller.
            movieController?.deleteMovie(movie: movie)
            
            //Deletes cell on the table view controller.
            tableView.deleteRows(at: [indexPath], with: .automatic)
        }
    }
    
    var movieController: MovieController?
}
