//
//  MoviesTableViewController.swift
//  Movie List
//
//  Created by Tobi Kuyoro on 13/12/2019.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import UIKit

class MoviesTableViewController: UIViewController {
    
    @IBOutlet weak var tableView: UITableView!
    
    var movies: [Movie] = []

    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.dataSource = self
        tableView.delegate = self
    }
    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "AddMovieShowSegue" {
            if let destinationVC = segue.destination as? AddMovieViewController {
                destinationVC.delegate = self
            }
        } else if segue.identifier == "EditMovieModalSegue" {
            if let destinationVC = segue.destination as? EditMovieViewController {
                destinationVC.delegate = self
            }
        }
    }
}

extension MoviesTableViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return movies.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "MovieCell", for: indexPath) as? MovieTableViewCell else { fatalError() }
            let movie = movies[indexPath.row]
            cell.movie = movie
            
            return cell
    }
    
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        
        if editingStyle == .delete {
            movies.remove(at: indexPath.row)
            tableView.deleteRows(at: [indexPath], with: .fade)
        }
    }
}

extension MoviesTableViewController: AddMovieDelegate {
    func addNewMovie(movie: Movie) {
        movies.append(movie)
        tableView.reloadData()
    }
}

extension MoviesTableViewController: EditMovieTitleDelegate {
    func editMovieTitle(_ movie: Movie) {
        if let indexPath = tableView.indexPathForSelectedRow {
            movies.remove(at: indexPath.row)
            movies.insert(movie, at: indexPath.row)
            tableView.reloadData()
        }
    }
}
