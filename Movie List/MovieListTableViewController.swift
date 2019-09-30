//
//  MovieListTableViewController.swift
//  Movie List
//
//  Created by Gavin Murphy on 9/27/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import UIKit

class MovieListTableViewController: UIViewController {
    
    @IBOutlet weak var tableView: UITableView!
    
    var movies: [Movie] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
}

    func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "AddMovieModalSegue" {
            guard let addMovieVC = segue.destination as? AddMovieViewController else {
                fatalError() }

            //addMovieVC.delegate = self 
        }
}

// MARK: - Table View Data Source

extension MovieListTableViewController: UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return movies.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    guard let cell = tableView.dequeueReusableCell(withIdentifier: "MovieCell", for: indexPath) as? MovieTableViewCell else {
        fatalError()
        }
        

        let movie = movies[indexPath.row]
        cell.movie = movie
        // use cell here
        
        return cell
    }
}

// MARK - Add Friend Delegate

extension MovieListTableViewController: AddMovieDelegate {
    func movieWasAdded(_ movie: Movie) {
        print("The movie \(movie) was just created") // temporary code holder
        // TODO: Implement delegate method here!
    }
}
