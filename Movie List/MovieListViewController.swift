//
//  MovieListViewController.swift
//  Movie List
//
//  Created by Gi Pyo Kim on 9/13/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import UIKit

class MovieListViewController: UIViewController {
    
    @IBOutlet weak var tableView: UITableView!
    
    var movies: [Movie] = []
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "AddMovieSegue" {
            if let AddMovieVC = segue.destination as? AddMovieViewController {
                AddMovieVC.delegate = self
            }
        }
    }
    
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            movies.remove(at: indexPath.row)
            tableView.deleteRows(at: [indexPath], with: .fade)
        }
    }
}

extension MovieListViewController: UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return movies.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "MovieCell", for: indexPath) as? MovieTableViewCell
            else { return UITableViewCell() }
        
        cell.delegate = self
        cell.movie = movies[indexPath.row]
        return cell
    }
}

extension MovieListViewController: AddMovieDelegate {
    
    func movieWasAdded(_ movie: Movie) {
        // Do not put duplicate movies
        var counter = 0
        while counter < movies.count {
            if movies[counter].name == movie.name {
                self.navigationController?.popViewController(animated: true)
                return
            }
            counter += 1
        }
        
        movies.append(movie)
        self.navigationController?.popViewController(animated: true)
        tableView.reloadData()
    }
}

extension MovieListViewController: hasBeenSeenDelegate {
    func hasBeenSeenTabbed(_ movie: Movie) {
        var counter = 0
        while counter < movies.count {
            if movies[counter].name == movie.name {
                movies[counter].hasBeenSeen = !movie.hasBeenSeen
            }
            counter += 1
        }
        tableView.reloadData()
    }
}
