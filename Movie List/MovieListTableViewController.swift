//
//  MovieListTableViewController.swift
//  Movie List
//
//  Created by Tobi Kuyoro on 08/11/2019.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import UIKit

class MovieListTableViewController: UIViewController, AddMovieDelegate {
    
    @IBOutlet weak var tableView: UITableView!
    
    var movies: [Movie] = []
    
    func movieWasAdded(movie: Movie) {
        movies.append(movie)
        tableView.reloadData()
        dismiss(animated: true, completion: nil)
    }
    

    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {

        if segue.identifier == "AddMovieSegue" {
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
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "MovieCell", for: indexPath) as? SeenStatusTableViewCell else {
            return UITableViewCell()
        }
        
        let movie = movies[indexPath.row]
        
        cell.movieLabel.text = movie.name
        
        return cell
    }
}

