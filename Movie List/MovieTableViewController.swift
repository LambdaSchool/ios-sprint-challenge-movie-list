//
//  MovieTableViewController.swift
//  Movie List
//
//  Created by Mark Poggi on 3/20/20.
//  Copyright © 2020 Lambda School. All rights reserved.
//

import UIKit



class MovieTableViewController: UIViewController {
    
    
    @IBOutlet weak var tableView: UITableView!
 
    var movies: [MOVIE] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.dataSource = self
        
    }

    
    
    // MARK: - Navigation
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "AddMovieSegue" {
            if let addMovieVC = segue.destination as? AddMovieViewController {
                addMovieVC.delegate = self
            }
        }
    }
}

extension MovieTableViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return movies.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "MovieTableViewCell", for: indexPath) as? MovieTableViewCell else {
            fatalError()
        }
        let movie = movies[indexPath.row]
        
        cell.movie = movie
        
        return cell
        
    }
}

extension MovieTableViewController: AddMovieDelegate {
    func addMovie(_ movie: MOVIE) {
        movies.append(movie)
        tableView.reloadData()
    }
    
    
}
