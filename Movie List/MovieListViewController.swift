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
}

extension MovieListViewController: UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return movies.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "MovieCell", for: indexPath) as? MovieTableViewCell
            else { return UITableViewCell() }
        
        cell.movie = movies[indexPath.row]
        return cell
    }
}

extension MovieListViewController: AddMovieDelegate {
    
    func movieWasAdded(_ movie: Movie) {
        movies.append(movie)
        self.navigationController?.popViewController(animated: true)
        tableView.reloadData()
    }
}
