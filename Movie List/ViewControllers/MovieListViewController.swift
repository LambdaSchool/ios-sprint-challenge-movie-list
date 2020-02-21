//
//  MovieListViewController.swift
//  Movie List
//
//  Created by Shawn Gee on 2/21/20.
//  Copyright © 2020 Lambda School. All rights reserved.
//

import UIKit

private let movieCellID = "MovieCell"
private let addMovieSegueID = "AddMovieSegue"
private let editMovieSegueID = "EditMovieSegue"

class MovieListViewController: UIViewController {

    var movies = [Movie]()
    
    @IBOutlet weak var movieTableView: UITableView!
    
    //MARK: - View Lifecycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        movieTableView.dataSource = self
        movieTableView.delegate = self
    }
    
    override func viewWillAppear(_ animated: Bool) {
        movieTableView.reloadData()
    }

// MARK: - Navigation

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == addMovieSegueID, let editMovieVC = segue.destination as? EditMovieViewController {
            editMovieVC.delegate = self
        } else if segue.identifier == editMovieSegueID, let editMovieVC = segue.destination as? EditMovieViewController {
            guard let selectedIndex = movieTableView.indexPathForSelectedRow else { return }
            editMovieVC.movie = movies[selectedIndex.row]
        }
    }

}

//MARK: - UITableViewDataSource

extension MovieListViewController: UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        movies.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let movieCell = movieTableView.dequeueReusableCell(withIdentifier: movieCellID, for: indexPath) as? MovieTableViewCell else {
            fatalError("Unable to dequeue cell with identifier \(movieCellID)")
        }
        movieCell.movie = movies[indexPath.row]
        return movieCell
    }
}

extension MovieListViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            movies.remove(at: indexPath.row)
            tableView.deleteRows(at: [indexPath], with: .left)
        }
    }
}

//MARK: - AddMovieDelegate

extension MovieListViewController: AddMovieDelegate {
    func addMovieToMovieList(_ movie: Movie) {
        movies.append(movie)
        movieTableView.reloadData()
    }
}
