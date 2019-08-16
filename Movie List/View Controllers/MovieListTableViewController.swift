//
//  MovieListTableViewController.swift
//  Movie List
//
//  Created by Ryan Dutson on 7/19/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import UIKit

class MovieListTableViewController: UITableViewController {

    let movieModelController = MovieController()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.reloadData()
        
        // Do any additional setup after loading the view.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        tableView.reloadData()
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return movieModelController.movies.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "MovieCell", for: indexPath) as? MovieTableViewCell else { return UITableViewCell() }
        let movie = movieModelController.movies[indexPath.row]
        cell.movieTitleLabel.text = movie.movieName
        return cell
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "AddMovieShowSegue" {
            let addMovieVC = segue.destination as? AddMovieViewController
            addMovieVC?.movieController = movieModelController
        }
    }
}
