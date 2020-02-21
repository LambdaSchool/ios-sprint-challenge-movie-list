//
//  MoveListViewController.swift
//  Movie List
//
//  Created by dc on 2/21/20.
//  Copyright © 2020 Lambda School. All rights reserved.
//

import UIKit

class MovieListViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    
    var movies = Array<Movie>()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
        tableView.dataSource = self
    }
}

extension MovieListViewController: AddMovieDelegate {
    
    func didAddMovie(_ movie: Movie) {
        movies.append(movie)
        tableView.reloadData()
    }
}

extension MovieListViewController: UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "MovieCell", for: indexPath)
        
        if let movieCell = cell as? MovieTableViewCell {
            movieCell.movie = movies[indexPath.row]
        }
        
        return cell
    }
}
