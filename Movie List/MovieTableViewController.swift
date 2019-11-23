//
//  MovieTableViewController.swift
//  Movie List
//
//  Created by Osha Washington on 11/22/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import UIKit
class MoviesTableViewController: UIViewController {
    
    
@IBOutlet weak var tableView: UITableView!

var movies: [Movie] = []

override func viewDidLoad() {
    super.viewDidLoad()
}


}

extension MoviesTableViewController: UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return movies.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "MovieCell", for: indexPath) as? movieViewCell else { return UITableViewCell() }
        
        let movie = movies[indexPath.row]
        cell.movie = movie
        
        return cell
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "AddMovieModalSegue" {
            if let addMovieVC = segue.destination as? addMovieViewController {
                addMovieVC.delegate = self
            }
        }
    }
}


extension MoviesTableViewController: AddMovieDelegate {
    
    func movieWasCreated(_ movie: Movie) {
        movies.append(movie)
        navigationController?.popViewController(animated: true)
        tableView.reloadData()
    }
    
}
