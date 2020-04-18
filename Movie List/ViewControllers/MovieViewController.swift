//
//  MovieViewController.swift
//  Movie List
//
//  Created by Sammy Alvarado on 4/18/20.
//  Copyright © 2020 Lambda School. All rights reserved.
//

import UIKit

class MovieViewController: UIViewController {
    
    var movies: [Movie] = []

    @IBOutlet weak var tableView: UITableView!
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "addMovieSegue" {
            if let addVC = segue.destination as? AddMovieViewController {
                addVC.delegate = self
            }
        }
    }
}

extension MovieViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return movies.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "MovieCell", for: indexPath) as? MovieTableViewCell else { return UITableViewCell()}
        
        let movie = movies[indexPath.row]
        cell.movies = movie
        return cell
    }
}

extension MovieViewController: AddMovieDelegate {
    func newMovieAdded(movie: Movie) {
        movies.append(movie)
        tableView.reloadData()
    }
}
