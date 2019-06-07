//
//  EnterMovieViewController.swift
//  Movie List
//
//  Created by Jake Connerly on 6/7/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import UIKit

class MovieListViewController: UIViewController {
    var movieController = MovieController()
    //
    // MARK: - Outlets
    //
    @IBOutlet weak var plusButton: UIBarButtonItem!
    @IBOutlet weak var tableView: UITableView!
    
    //
    // MARK: - Actions
    //
   
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        tableView.delegate = self
        tableView.dataSource = self
    }
}
//
// MARK: - Extensions
//
extension MovieListViewController: UITableViewDelegate {
    
}
extension MovieListViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return movieController.favoriteMoviesArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "MovieCell", for: indexPath) as? MovieListTableViewCell else { return UITableViewCell() }
        let movieCell = movieController.favoriteMoviesArray[indexPath.row]
        cell.setMovie = movieCell
        cell.delegate = self
        return cell
    }
}
extension MovieListViewController: MovieCellDelegate {
    func seenUnseenButtonTapped(on cell: MovieListTableViewCell) {
        guard let movie = cell.setMovie,
            let indexPath = tableView.indexPath(for: cell) else { return }
        movieController.toggleSeenUnseen(for: movie)
        tableView.reloadRows(at: [indexPath], with: .fade)
    }
    
    
}
