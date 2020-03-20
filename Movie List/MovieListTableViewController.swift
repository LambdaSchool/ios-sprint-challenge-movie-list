//
//  MovieListTableViewController.swift
//  Movie List
//
//  Created by ronald huston jr on 3/20/20.
//  Copyright © 2020 Lambda School. All rights reserved.
//

import UIKit

class MovieListTableViewController: UITableViewController {
    
    // add IBOutlet var MovieTableView 
    @IBOutlet var tableView: UITableView!
    
    var movies: [Movies] = [Movie(name: "Zoolander", viewed: true)]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.dataSource = self
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "AddMovieSegue" {
            guard let addMovieVC = segue.destination as? AddMovieViewController else { return }
            // sets up this view controller to receive the information passed from the addMovieVC using the delegate pattern
            addMovieVC.delegate = self
        }
    }
}
    
extension MovieListTableViewController: UITableViewDataSource {
    // tableView is delegating to:
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return movies.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) ->
        UITableViewCell {
            
            guard let cell = tableView.dequeueReusableCell(withIdentifier: "MovieCell", for: indexPath) as? MovieTableViewCell else {
                fatalError("cell is not a MovieTableViewCell")
            }
            let movie = movies[indexPath.row]
            
            // populate with naming convention
            cell.movieLabel.text = movie.name
            // assign content to every cell
            
            return cell
        }
    }

extension MovieListTableViewController: AddMovieDelegate {
    func movieWasAdded(movie: Movie) {
        movies.append(movie)
        tableView.reloadData() 
    }
}
