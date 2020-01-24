//
//  MoviesTableViewController.swift
//  Movie List
//
//  Created by scott harris on 1/24/20.
//  Copyright © 2020 Lambda School. All rights reserved.
//

import UIKit

class MoviesTableViewController: UIViewController {
    @IBOutlet weak var tableView: UITableView!
    
    var movies: [Movie] = [Movie(name: "A Great Movie To Watch", wasSeen: true)]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.dataSource = self
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "AddMovieModalSegue" {
            if let addMovieVC = segue.destination as? AddMovieViewController {
                addMovieVC.delegate = self
            }
        } else if segue.identifier == "ShowEditViewSegue" {
            if let selectedIndex = tableView.indexPathForSelectedRow {
                if let editVC = segue.destination as? EditMovieViewController {
                    editVC.index = selectedIndex.row
                    editVC.movie = movies[selectedIndex.row]
                    editVC.delegate = self
                }
            }
            
        }
    }
    
}

extension MoviesTableViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return movies.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "MovieCell", for: indexPath) as? MovieListTableViewCell else { return UITableViewCell() }
        
        let movie = movies[indexPath.row]
        
        cell.movie = movie
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        
        movies.remove(at: indexPath.row)
        tableView.deleteRows(at: [indexPath], with: .bottom)

        
    }
    
}

extension MoviesTableViewController: AddMovieDelegate {
    func movieWasAdded(_ movie: Movie) {
        movies.append(movie)
        tableView.reloadData()
    }
}

extension MoviesTableViewController: EditMovieDelegate {
    func movieWasEdited(_ movie: Movie, at index: Int) {
        movies.remove(at: index)
        movies.insert(movie, at: index)
        tableView.reloadData()
        
    }
}
