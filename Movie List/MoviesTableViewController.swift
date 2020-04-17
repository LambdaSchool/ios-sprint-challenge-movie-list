//
//  MoviesTableViewController.swift
//  Movie List
//
//  Created by ronald huston jr on 4/17/20.
//  Copyright © 2020 Lambda School. All rights reserved.
//

import UIKit

class MoviesTableViewController: UIViewController {
    @IBOutlet weak var tableView: UITableView!
    
    var movies: [Movie] = [Movie(name: "As Good As It Gets", seen: true)]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.dataSource = self
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "AddMovieSegue" {
            
            guard let newMovieVC = segue.destination as? AddMovieViewController else { return }
            
            newMovieVC.delegate = self
        }
    }

}

extension MoviesTableViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return movies.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "MovieCell", for: indexPath) as? MoviesTableViewController else { fatalError() }
        
        let movie = movies[indexPath.row]
        
        cell.movieLabel.text = movie.name
        cell.hasSeenButton.setTitle("unseen", for: .normal)
        return cell
    }
}

extension MoviesTableViewController: NewMovieDelegate {
    func movieWasCreated(movie: Movie) {
        movies.append(movie)
        tableView.reloadData()
    }
}
