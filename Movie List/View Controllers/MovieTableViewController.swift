//
//  MovieTableViewController.swift
//  Movie List
//
//  Created by Harmony Radley on 2/21/20.
//  Copyright © 2020 Lambda School. All rights reserved.
//

import UIKit


class MovieListTableViewController: UITableViewController {
    
    
 
        var movies: [Movie] = []

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
            if segue.identifier == "AddMovieSegue" {
                if let addNewMovie = segue.destination as? AddNewMovieViewController {
                    addNewMovie.delegate = self
                }
            } 
        }
    }
    


   
extension MovieListTableViewController: UITableViewDataSource {
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
           return movies.count
}

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    guard let cell = tableView.dequeueReusableCell(withIdentifier: "MovieListCell", for: indexPath) as? MovieListTTableViewCell else { return UITableViewCell() }
    
    let movie = movies[indexPath.row]
    cell.movie = movie
        
    
    return cell
}
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
           return true
        
    }

}
    
extension MovieListTableViewController: AddMovieDelegate {
    func MovieWasCreated(_ movie: Movie) {
        movies.append(movie)
        dismiss(animated: true, completion: nil)
        tableView.reloadData()
    }
}
    
