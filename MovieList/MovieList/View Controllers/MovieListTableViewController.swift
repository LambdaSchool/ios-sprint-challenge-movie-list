//
//  MovieListTableViewController.swift
//  MovieList
//
//  Created by Lisa Fisher on 8/3/19.
//  Copyright © 2019 Lisa Fisher. All rights reserved.
//

import UIKit

class MovieListTableViewController: UIViewController {
    
    @IBOutlet weak var tableView: UITableView!
    
    var movies: [Movie] = []
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "AddMovieModalSegue" {
            if let addMovieVC = segue.destination as? AddMovieViewController {
                addMovieVC.delegate = self
            }
        }
    }
}

extension MovieListTableViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return movies.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "MovieCell", for: indexPath) as? MovieTableViewCell else { return UITableViewCell() }
     
        let movie = movies[indexPath.row]
        cell.movie = movie
        
        return cell
    }
}

extension MovieListTableViewController: AddMovieDelegate {
    func movieWasCreated(_ movie: Movie) {
        movies.append(movie)
        dismiss(animated: true, completion: nil)
        tableView.reloadData()
    }
}
extension MovieListTableViewController {
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        
        movies.remove(at: indexPath.row)
        tableView.reloadData()
    }
}



