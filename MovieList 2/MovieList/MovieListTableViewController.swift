//
//  MovieListTableViewController.swift
//  MovieList
//
//  Created by Jordan Davis on 5/3/19.
//  Copyright © 2019 Jordan Davis. All rights reserved.
//

import UIKit

protocol MovieEnteredDelegate: class {
    func movieWasEntered(movie: Movie)
}
class MovieListTableViewController: UITableViewController, MovieListTableViewCellDelegate {
    func seenButtonWasPressed(on cell: MovieListTableViewCell) {
        print("Movie Was Seen")
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.reloadData()

        tableView.delegate = self
        tableView.dataSource = self
    }

    // MARK: - Table view data source

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return movieListController.movies.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "MovieListCell", for: indexPath)

        let movie = movieListController.movies[indexPath.row]
        cell.textLabel?.text = movie.title

        return cell
    }


    
    // MARK: - Navigation

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "AddMovie" {
            guard let addNewMovieVC = segue.destination as? AddNewMovieViewController,
                let indexPath = tableView.indexPathForSelectedRow else { return }
            addNewMovieVC.movie = movieListController.movies[indexPath.row]
        }
    }
    
    
    //MARK: -Properties

    var movieListController = MovieListController()
    
}
