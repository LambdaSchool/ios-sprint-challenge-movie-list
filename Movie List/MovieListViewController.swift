//
//  MovieListViewController.swift
//  Movie List
//
//  Created by Isaac Lyons on 9/13/19.
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
        if segue.identifier == "AddMovieShowSegue" {
            if let addMovieVC = segue.destination as? AddMovieViewController {
                addMovieVC.delegate = self
            }
        } else if segue.identifier == "EditMovieShowSegue" {
            if let indexPath = tableView.indexPathForSelectedRow,
                let editMovieVC = segue.destination as? EditMovieViewController {
                editMovieVC.movie = movies[indexPath.row]
                editMovieVC.movieIndex = indexPath.row
                editMovieVC.delegate = self
            }
        }
    }
    
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            movies.remove(at: indexPath.row)
            tableView.deleteRows(at: [indexPath], with: .left)
        }
    }

}

extension MovieListViewController: UITableViewDataSource {
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


extension MovieListViewController: AddMovieDelegate {
    func movieWasCreated(_ movie: Movie) {
        movies.append(movie)
        navigationController?.popViewController(animated: true)
        tableView.reloadData()
    }
}

extension MovieListViewController: EditMovieDelegate {
    func movieWasEdited(movie: Movie, index: Int) {
        movies[index] = movie
        navigationController?.popViewController(animated: true)
        tableView.reloadData()
    }
}
