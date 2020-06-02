//
//  MovieTableViewController.swift
//  Movie List
//
//  Created by Dojo on 6/1/20.
//  Copyright © 2020 Lambda School. All rights reserved.
//

import UIKit

class MovieListViewController: UIViewController {
    
    @IBOutlet weak var tableView: UITableView!
    
    var movies = [Movie]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.dataSource = self
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "AddMovieModalSegue" {
            if let addMovieVC = segue.destination as? AddMovieViewController {
                addMovieVC.delegate = self
            }
        }
        
    }
    func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        return true
    }
}

extension MovieListViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return movies.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "MovieCell", for: indexPath) as? MovieListTableViewCell else { return UITableViewCell() }
        cell.movieMade = movies[indexPath.row]
        cell.delegate = self
        return cell
    }
}

extension MovieListViewController: AddMovieDelegate {
    func movieWasAdded(_ movie: Movie) {
        movies.append(movie)
        navigationController?.popViewController(animated: true)
        tableView.reloadData()
    }
}

extension MovieListViewController: movieListTableViewDelegate {
    func seenButtonPressed(cell: MovieListTableViewCell) {
        guard let indexPath = tableView.indexPath(for: cell) else {
            return }
        
        if movies[indexPath.row].seen {
            cell.notSeenButton.setTitle("Not Seen", for: .normal)
            movies[indexPath.row].seen = false
        } else {
            cell.notSeenButton.setTitle("Seen", for: .normal)
            movies[indexPath.row].seen = true
        }
    }
}
