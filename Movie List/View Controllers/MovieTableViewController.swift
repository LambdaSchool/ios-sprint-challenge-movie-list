//
//  MovieTableViewController.swift
//  Movie List
//
//  Created by John Holowesko on 11/24/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import UIKit

class MovieTableViewController: UIViewController, UITableViewDelegate, UITableViewDataSource, FilmTableViewCellDelegate {

    // MARK: IBOutlets
    @IBOutlet var tableView: UITableView!
    
    // MARK: Properties
    // Making a test movie
    var movies: [Movie] = [Movie(name: "Inception", watched: false)]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.tableView.delegate = self
        self.tableView.dataSource = self
    }
    
    // UITableview Data Source Methods
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return movies.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "MovieCell", for: indexPath) as? FilmTableViewCell else { return UITableViewCell() }
        
        self.configureCell(cell, indexPath: indexPath)
        cell.delegate = self
        
        return cell
    }
    
    func filmTableViewCellButtonTapped(_ cell: FilmTableViewCell) {
        guard let indexPath = self.tableView.indexPath(for: cell) else { return }
        movies[indexPath.row].watched = !movies[indexPath.row].watched
        configureCell(cell, indexPath: indexPath)
    }
    
    func configureCell(_ cell: FilmTableViewCell, indexPath: IndexPath) {
        let movie = movies[indexPath.row]
        cell.movieNameLabel.text = movie.name
        
        if movie.watched {
            cell.seenNotSeenButton.setTitle("Seen", for: .normal)
        } else {
            cell.seenNotSeenButton.setTitle("Not Seen", for: .normal)
        }
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "AddMovieSegue" {
            if let addMovieVC = segue.destination as? AddMovieViewController {
                addMovieVC.delegate = self
            }
        }
    }
}

extension MovieTableViewController: AddMovieDelegate {
    func movieWasAdded(_ movie: Movie) {
        movies.append(movie)
//        dismiss(animated: true, completion: nil)
        self.navigationController?.popViewController(animated: true)
        tableView.reloadData()
    }
}
