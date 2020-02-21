//
//  MovieTableViewController.swift
//  Movie List
//
//  Created by Harmony Radley on 2/21/20.
//  Copyright © 2020 Lambda School. All rights reserved.
//

import UIKit


class MovieListTableViewController: UITableViewController, AddMovieDelegate {
    func MovieWasCreated(_ mov: Movie) {
        <#code#>
    }
    

    var movies: [Movie] = []

    override func viewDidLoad() {
        super.viewDidLoad()


    }
    override func viewWillAppear(_ animated: Bool) {
           super.viewWillAppear(animated)
           tableView.reloadData()
       }

    func movieAdded(movie: Movie) {
        movies.append(movie)
}


    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return movies.count
    }


    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "movieCell", for: indexPath) as? MoviesListTableViewCell else { fatalError() }
        let movie = movies[indexPath.row]
        cell.movie = movie
        return cell
    }


    


    // MARK: - Navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "cellToAdd" {
            if let addMovieVC = segue.destination as? AddMovieViewController {
                addMovieVC.delegate = self
            }
        }
        
    }


}
