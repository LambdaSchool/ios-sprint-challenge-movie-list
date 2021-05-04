//
//  MoviesTableViewController.swift
//  Movie List
//
//  Created by David Wright on 11/24/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import UIKit

class MoviesTableViewController: UIViewController {

    // MARK: - IBOutlets
    @IBOutlet var tableView: UITableView!
    
    // MARK: - Properties
    var movies = [ Movie(title: "A New Hope"),
                   Movie(title: "The Empire Strikes Back"),
                   Movie(title: "Return of the Jedi") ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.tableView.delegate = self
        self.tableView.dataSource = self
    }
    
    // MARK: - Navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "AddMovieSegue", let addMovieVC = segue.destination as? AddMovieViewController {
            addMovieVC.delegate = self
        }
    }
}

// MARK: - UITableViewDataSource
extension MoviesTableViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return movies.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "MovieCell", for: indexPath) as? MovieTableViewCell else { return UITableViewCell() }
        
        cell.movie = movies[indexPath.row]
        cell.delegate = self
        cell.indexPath = indexPath
        
        return cell
    }
}

// MARK: - UITableViewDelegate
extension MoviesTableViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        true
    }
    
    func tableView(_ tableView: UITableView, editActionsForRowAt indexPath: IndexPath) -> [UITableViewRowAction]? {
        let editButton = UITableViewRowAction(style: .normal, title: "Edit") { rowAction, indexpath in
            let alert = UIAlertController(title: "Edit Movie Title", message: nil, preferredStyle: .alert)
            
            alert.addTextField { textField in
                textField.text = self.movies[indexPath.row].title
            }
            
            alert.addAction(UIAlertAction(title: "OK", style: .default) { action in
                guard let newTitle = alert.textFields?.first?.text, !newTitle.isEmpty else { return }
                self.movies[indexPath.row].title = newTitle
                self.tableView.reloadData()
            })
            
            alert.addAction(UIAlertAction(title: "Cancel", style: .cancel, handler: nil))
            
            self.present(alert, animated: true, completion: nil)
        }
        
        let deleteButton = UITableViewRowAction(style: .normal, title: "Delete") { (rowAction, indexpath) in
            self.movies.remove(at: indexPath.row)
            tableView.deleteRows(at: [indexPath], with: .fade)
            tableView.reloadData() }
        deleteButton.backgroundColor = UIColor.systemRed
        return [deleteButton, editButton]
    }
}

// MARK: - AddMovieDelegate
extension MoviesTableViewController: AddMovieDelegate {
    func movieWasAdded(_ movie: Movie) {
        movies.append(movie)
        tableView.reloadData()
    }
}

// MARK: - MovieCellDelegate
extension MoviesTableViewController: MovieCellDelegate {
    func seenMovieButtonWasTapped(_ movieCell: MovieTableViewCell) {
        if let hasSeenMovie = movieCell.movie?.hasBeenSeen, let index = movieCell.indexPath?.row {
            movies[index].hasBeenSeen = hasSeenMovie
        }
    }
}
