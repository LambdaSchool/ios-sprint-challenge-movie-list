//
//  MovieListViewController.swift
//  Movie List
//
//  Created by Sean Acres on 6/7/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import UIKit

class MovieListViewController: UIViewController, UITableViewDataSource, MovieTableViewCellDelegate {
    
    @IBOutlet var tableView: UITableView!
    
    let movieController = MovieController()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.dataSource = self
    }
    
    override func viewWillAppear(_ animated: Bool) {
        tableView.reloadData()
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return movieController.movies.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "MovieCell", for: indexPath) as? MovieTableViewCell else {
            return UITableViewCell()
        }
        
        let movie = movieController.movies[indexPath.row]
        cell.movie = movie
        cell.delegate = self
        
        return cell
    }
    
    func isSeenButtonTapped(on cell: MovieTableViewCell) {
        guard let movie = cell.movie,
            let indexPath = tableView.indexPath(for: cell) else { return }
        
        movieController.toggleIsSeen(for: movie)
        tableView.reloadRows(at: [indexPath], with: .none)
    }
    


    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "addMovie" {
            guard let addMovieVC = segue.destination as? AddMovieViewController else { return }
            addMovieVC.movieController = movieController
        }
    }


    
}
