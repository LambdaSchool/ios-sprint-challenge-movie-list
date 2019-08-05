//
//  MoviesTableViewController.swift
//  Movie List
//
//  Created by Fabiola S on 8/2/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import UIKit

class MoviesTableViewController: UIViewController {
    
    @IBOutlet weak var tableView: UITableView!
    
    
    var movies = [Movie]()

    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.dataSource = self
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "AddMovieSegue" {
            if let addMovieVC = segue.destination as? AddMovieViewController {
                addMovieVC.delegate = self
            }
        }
    }

}

extension MoviesTableViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return movies.count
    }
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "MovieCell", for: indexPath) as? MovieTableViewCell else { return UITableViewCell() }
        
        let movie = movies[indexPath.row]
        cell.movie = movie
        
        return cell
    }
    
    
    
    func tableView(_ tableView: UITableView, editingStyleForRowAt indexPath: IndexPath) -> UITableViewCell.EditingStyle{
        return .delete
    }
    
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            movies.remove(at: indexPath.row)
            tableView.deleteRows(at: [indexPath], with: .automatic)
            
        }
        
    }
    
    
}

extension MoviesTableViewController: AddMovieDelegate {
    func movieWasAdded(_ movie: Movie) {
        movies.append(movie)
        tableView.reloadData()
    }
}



