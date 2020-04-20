//
//  MovieTableViewController.swift
//  Movie List
//
//  Created by Bohdan Tkachenko on 4/18/20.
//  Copyright © 2020 Lambda School. All rights reserved.
//

import UIKit

class MovieTableViewController: UIViewController {
    
    var movies: [Movie] = []
    
    @IBOutlet weak var movieTabelView: UITableView!
    
    
    
   override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "AddMovieToTheList" {
            if let addVC = segue.destination as? AddMovieViewController {
                addVC.delegate = self
            }
        }
    }
}


extension MovieTableViewController: UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return movies.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "MovieCell", for: indexPath) as? MovieTableViewCell else { return UITableViewCell() }
        
        let movie = movies[indexPath.row]
        cell.movie = movie
        return cell
    }

    
    
     func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            movies.remove(at: indexPath.row)
            tableView.deleteRows(at: [indexPath], with: .fade)
            print(movies.count)
        } else if editingStyle == .insert {
            
            }
        }
    }


extension MovieTableViewController: AddMovieDelegate {
    func newMovieAdded(movie: Movie) {
        movies.append(movie)
        movieTabelView.reloadData()
    }
}


