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
        
        movieController?.update(movie: movie)
        tableView.reloadRows(at: [indexPath], with: .automatic)
        
        }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return movieController?.movies.count ?? 0
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "MovieCell", for: indexPath) as? MoviesTableViewCell else {return UITableViewCell()}
        guard let movie = movieController?.movies[indexPath.row] else {return UITableViewCell()}
        
        print(cell.textLabel?.text)
        cell.movieName?.text = movie.name
        print(cell.textLabel?.text)
        
        if movie.hasBeenSeen == true {
            cell.hasBeenSeen.setTitle("Seen", for: .normal)
        } else {
            cell.hasBeenSeen.setTitle("Unseen", for: .normal)
        }
        //cell.updateViews()
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
