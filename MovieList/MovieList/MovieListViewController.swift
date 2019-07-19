//
//  ViewController.swift
//  MovieList
//
//  Created by brian vilchez on 7/19/19.
//  Copyright © 2019 brian vilchez. All rights reserved.
//

import UIKit

class MovieListViewController: UIViewController {

    //MARK: Properties
    @IBOutlet var tableview: UITableView!
   var movieList = MovieController()
    var movies: [Movie] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    //MARK:Navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?){
        if segue.identifier == "AddMovieShowSegue"{
        guard let addMovieVC = segue.destination as? AddMoveiViewController else { return }
            addMovieVC.delegate = self
            }
    }
}

// MARK: TableView DataSource
extension MovieListViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return movieList.movies.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "MovieCell", for: indexPath) as? MovieTableViewCell else {return UITableViewCell()}
       let movie = movieList.movies[indexPath.row]
        cell.movie = movie
        return cell
    }
}
extension MovieListViewController: CreateMovieDelegate {
    func addMovie(_ title: Movie) {
        movieList.movies.append(title)
        tableview.reloadData()
    }

}

