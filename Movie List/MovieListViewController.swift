//
//  MovieListViewController.swift
//  Movie List
//
//  Created by Nichole Davidson on 2/21/20.
//  Copyright © 2020 Lambda School. All rights reserved.
//

import UIKit

class MovieListViewController: UIViewController, AddMovieDelegate, UITableViewDataSource {
       
    @IBOutlet weak var movieListTableView: UITableView!
    
    var movies: [Movie] = []

    func movieWasAdded(_movie: Movie) {
        movies.append(_movie)
        movieListTableView.reloadData()
    }
    
//    override func viewDidLoad() {
//        super.viewDidLoad()
//    }
    
     // MARK: - Table view data source
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return movies.count
    }
       
       func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "MovieCell", for: indexPath) as? MovieListTableViewCell else { return UITableViewCell() }
        
        let movie = movies[indexPath.row]
        cell.movie = movie
        return cell
 }
    
    // MARK: - Navigation

    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "AddMovieSegue" {
            guard let addMovieVC = segue.destination as? AddMovieViewController else { return }
                addMovieVC.delegate = self
            }
        }
    }

