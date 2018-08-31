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
    
    func updateCell(for cell: MoviesTableViewCell) {
        guard let 
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return movieController?.movies.count ?? 0
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "MovieCell", for: indexPath) as? MoviesTableViewCell else {return UITableViewCell()}
        let movie = movieController?.movies[indexPath.row]
        
        cell.textLabel?.text = movie?.name
        cell.delegate = self
        
        return cell
    }
    
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            guard let movie = movieController?.movies[indexPath.row] else {return}
            movieController?.deleteMovie(movie: movie)
            tableView.deleteRows(at: [indexPath], with: .automatic)
            
        }
    }
    
    var movieController: MovieController?
}
