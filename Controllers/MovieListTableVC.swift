//
//  MovieListTableVC.swift
//  Movie List
//
//  Created by Ilgar Ilyasov on 9/2/18.
//  Copyright © 2018 Lambda School. All rights reserved.
//

import UIKit

class MovieListTableVC: UITableViewController, MovieControllerDelegate, MovieListTableViewCellDelegate {
    
    override func viewWillAppear(_ animated: Bool) {
        tableViewOutlet.reloadData()
    }
    
    func seenUnseenTapped(for cell: MovieListTableViewCell) {

        guard let indexPath = tableViewOutlet.indexPath(for: cell) else { return }
              let movie = movieController?.movies[indexPath.row]

        guard let theMovie = movie else { return }
        movieController?.changeStatus(for: theMovie)
        tableViewOutlet.reloadRows(at: [indexPath], with: .automatic)
    }

    @IBOutlet var tableViewOutlet: UITableView!

    // MARK: - moviewController Protocol
    
    var movieController: MovieController?
    
    // MARK: - Table view data source

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return movieController?.movies.count ?? 0
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "TableViewCell", for: indexPath) as? MovieListTableViewCell else { return UITableViewCell()}
        
        let movie = movieController?.movies[indexPath.row]
        
        cell.movie = movie
        cell.delegate = self
        
        return cell
    }
    
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            self.movieController?.deleteMovie(index: indexPath.row)
            tableViewOutlet.deleteRows(at: [indexPath], with: .fade)
        }
    }
}
