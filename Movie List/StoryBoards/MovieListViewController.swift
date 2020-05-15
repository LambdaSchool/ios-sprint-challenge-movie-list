//
//  MovieListViewController.swift
//  Movie List
//
//  Created by Violet Lavender Love on 5/15/20.
//  Copyright © 2020 Lambda School. All rights reserved.
//

import UIKit

class MovieListViewController: UIViewController, UITableViewDelegate {
    
    
    @IBOutlet var tableView: UITableView!
    
    var movies: [Movie] = [Movie(title: "Brave")]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
        tableView.dataSource = self
    }
    
    
    // MARK: - Navigation
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier ==  "ModalAddMovie" {
            
            
            let createMovieVC = segue.destination as? CreateMovieViewController
            
            createMovieVC?.delegate = self
        }
    }
}

extension MovieListViewController: UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return movies.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell: MovieTableViewCell = tableView.dequeueReusableCell(withIdentifier: "MovieCell") as? MovieTableViewCell else {
            fatalError("Cell is not a Movie cell. Take this and learn.")
        }
        let movie = movies[indexPath.row]
        
        cell.titleLabel.text = movie.title
        
        return cell
    }
    
    
}
extension MovieListViewController: CreateMovieDelegate {
    func createMovie(movie: Movie) {
        movies.append(movie)
        tableView.reloadData()
    }
    
    
}
