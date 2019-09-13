//
//  MovieListViewController.swift
//  Movie List
//
//  Created by Dennis on 9/13/19.
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
        if segue.identifier == "AddMovieModalSegue" {
            if let addMovieVC = segue.destination as? AddMovieViewController {
                addMovieVC.delegate = self
                }
        }
    }
}

// make an add movie delegate
extension MovieListViewController: AddMovieDelegate {
    
    func movieWasAdded(_ movie: Movie) {
        movies.append(movie)
        dismiss(animated: true, completion: nil)
        tableView.reloadData()
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

