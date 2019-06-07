//
//  MovieListViewController.swift
//  Movie List
//
//  Created by Jordan Davis on 6/7/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import UIKit

    class MovieListViewController: UIViewController, UITableViewDelegate, UITableViewDataSource, MovieListTableViewCellDelegate {
        
        override func viewDidLoad() {
            super.viewDidLoad()
            tableView.delegate = self
            tableView.dataSource = self
        }
        
        override func viewWillAppear(_ animated: Bool) {
            tableView.reloadData()
        }
        
        func seenButtonWasPressed(on cell: MovieListTableViewCell) {
            guard let indexPath = tableView.indexPath(for: cell) else { return }
            movieListController.movies[indexPath.row].hasSeen.toggle()
            tableView.reloadRows(at: [indexPath], with: .automatic)
        }
        
        func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
            return movieListController.movies.count
        }
        
        func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
            guard let cell = tableView.dequeueReusableCell(withIdentifier: "MovieListCell", for: indexPath) as? MovieListTableViewCell else { fatalError("Unable to dequeue cell") }
            let movie = movieListController.movies[indexPath.row]
            cell.movie = movie
            cell.delegate = self
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
        
        @IBOutlet var tableView: UITableView!
        var movieListController = MovieListController()
        
}
