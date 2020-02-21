//
//  MovieListViewController.swift
//  Movie List
//
//  Created by Shawn Gee on 2/21/20.
//  Copyright © 2020 Lambda School. All rights reserved.
//

import UIKit

private let movieCellID = "MovieCell"
private let addSegueID = "AddMovieSegue"

class MovieListViewController: UIViewController {

    var movies = [Movie]()
    @IBOutlet weak var movieTableView: UITableView!
    
//MARK: - View Lifecycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        movieTableView.dataSource = self
    }

// MARK: - Navigation

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == addSegueID, let addMovieVC = segue.destination as? AddMovieViewController {
            addMovieVC.delegate = self
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

//MARK: - AddMovieDelegate

extension MovieListViewController: AddMovieDelegate {
    func addMovieToMovieList(_ movie: Movie) {
        movies.append(movie)
        movieTableView.reloadData()
    }
}
