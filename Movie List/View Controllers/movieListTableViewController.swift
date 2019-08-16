//
//  movieListTableViewController.swift
//  Movie List
//
//  Created by Alex Rhodes on 8/16/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import UIKit

class movieListTableViewController: UITableViewController {
    
    var movieController = MovieController()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.backgroundColor = .black

    }

    // MARK: - Table view data source

   
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return movieController.movies.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "MovieCell", for: indexPath) as? movieTableViewCell else {return UITableViewCell()}

        cell.movie = movieController.movies[indexPath.row]
       

        return cell
    }
   

   
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "AddMovieSegue" {
            guard let addMovieVC = segue.destination as? addMovieViewController else {return}
            addMovieVC.movieController = movieController
            addMovieVC.tableView = tableView
        }
    }
}
