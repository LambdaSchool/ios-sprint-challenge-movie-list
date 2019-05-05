//
//  MovieListViewViewController.swift
//  Movie List
//
//  Created by Chris Price on 5/3/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import UIKit

class MovieListViewController: UIViewController, UITableViewDelegate, UITableViewDataSource, MovieTableViewCellDelegate {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        movieTableView.delegate = self
        movieTableView.dataSource = self
    }
    
    override func viewWillAppear(_ animated: Bool) {
        movieTableView.reloadData()
    }
    
    func seenButtonWasTapped(on cell: MovieTableViewCell) {
        guard let indexPath = movieTableView.indexPath(for: cell) else { return }
        movieController.movies[indexPath.row].wasSeen.toggle()
        movieTableView.reloadRows(at: [indexPath], with: .automatic)
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return movieController.movies.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "MovieCell", for: indexPath) as? MovieTableViewCell else { return UITableViewCell() }
        
        let movie = movieController.movies[indexPath.row]
        
        cell.movie = movie
        
        cell.delegate = self
        
        return cell
    }
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "AddMovie" {
            guard let addMovieVC = segue.destination as? AddMovieViewController else { return }
            addMovieVC.movieController = movieController
        }
    }
    
    @IBOutlet weak var movieTableView: UITableView!
    
    var movieController = MovieController()
}
