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
}

extension MovieListViewController: AddMovieDelegate {
    
    func didAddMovie(_ movie: Movie) {
        movies.append(movie)
        tableView.reloadData()
    }
}
