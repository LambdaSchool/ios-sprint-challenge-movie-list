//
//  MovieListTableViewController.swift
//  MovieList
//
//  Created by Lisa Fisher on 8/3/19.
//  Copyright © 2019 Lisa Fisher. All rights reserved.
//

import UIKit

class MovieListTableViewController: UITableViewController {
    
    @IBOutlet weak var tableView: UITableView!
    
    var friends: [Movie] = []
    
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
        // Two main failure cases:
        // 1. Dequeue fails because identifiers don't match
        // 2. Failure to conditionally downcast using as?
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "MovieCell", for: indexPath) as? MovieTableViewCell else { return UITableViewCell() }
        //friend constant
        let movie = movies[indexPath.row]
        cell.movie = movie
        
        return cell
    }
}

extension MovieListTableViewController: AddMovieViewController {
    func movieWasCreated(_ movie: Movie) {
        movies.append(friend)
        dismiss(animated: true, completion: nil)
        tableView.reloadData()
    }
    
    
}
