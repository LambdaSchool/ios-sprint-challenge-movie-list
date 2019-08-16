//
//  MovieListTableViewController.swift
//  Movie List
//
//  Created by Danielle Blackwell on 8/16/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import UIKit

class MovieListTableViewController: UITableViewController {

    let movieController = MovieController()
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.reloadData()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        tableView.reloadData()
    }

    
    // MARK: - Table view data source
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return movieController.movies.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "MovieCell", for: indexPath) as? MovieTableViewCell else { return UITableViewCell() }
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
    
    // Override to support conditional rearranging of the table view.
//    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
//        // Return false if you do not want the item to be re-orderable.
//        return true
//    }
//    */

    
//            MARK: - Navigation

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "AddMovieSegue" {
            var addMovieVC = segue.destination as? AddMovieViewController {
            addMovieVC?.movieController = movieController
            } else if segue.identifier == tableView.indexPathForSelectedRow else {return }
            let movieDetailVC = segue.destination as? AddMovieViewController
            movieDetailVC?.movie = movieController.movies[IndexPath.row]
    }

}
}
