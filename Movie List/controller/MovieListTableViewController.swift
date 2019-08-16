//
//  MovieListTableViewController.swift
//  Movie List
//
//  Created by brian vilchez on 8/16/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import UIKit
protocol createMovieDelegate {
    func movieWasCreated(_ movie: Movie)
}

class MovieListTableViewController: UITableViewController {
    
    // MARK: - properties
    var movies: [Movie] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return movies.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "MovieCell", for: indexPath) as? MovieTableViewCell else { return UITableViewCell() }
            let movie = movies[indexPath.row]
            cell.movie = movie
            return cell
    }
 
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        }
    }
    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "AddMovieModalSegue" {
            guard let addMovieVC = segue.destination as? AddMovieViewController else {return}
           addMovieVC.delegate = self
        } else if segue.identifier == "MovieDetailShowSegue" {
            guard let movieDetailVC = segue.destination as? MovieDetailViewController else {return}
            guard let selectedIndexPath = tableView.indexPathForSelectedRow else {return}
            let movie = movies[selectedIndexPath.row]
            movieDetailVC.movie = movie
        }
    }
    

}
extension MovieListTableViewController: createMovieDelegate {
    func movieWasCreated(_ movie: Movie) {
            movies.append(movie)
            tableView.reloadData()
            dismiss(animated: true, completion: nil)
    }
    
}
