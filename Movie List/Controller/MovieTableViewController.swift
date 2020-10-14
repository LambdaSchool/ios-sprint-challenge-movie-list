//
//  MovieTableViewController.swift
//  Movie List
//
//  Created by John Kouris on 8/3/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import UIKit

class MovieTableViewController: UIViewController {
    
    @IBOutlet var tableView: UITableView!
    
    var movies = [Movie]()

    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.dataSource = self
    }
    
    // MARK: - Navigation
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "AddMovieSegue" {
            if let destinationVC = segue.destination as? AddMovieViewController {
                destinationVC.delegate = self
            }
        }
    }
    
    func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        return true
    }
    
    // MARK: - TableView editing
    
//    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
//        if editingStyle == .delete {
//            movies.remove(at: indexPath.row)
//            tableView.deleteRows(at: [indexPath], with: .fade)
//        }
//    }
}

// MARK: - UITableViewDataSource

extension MovieTableViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return movies.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "MovieCell", for: indexPath) as? MovieTableViewCell else { return UITableViewCell() }
        cell.createdMovie = movies[indexPath.row]
        cell.delegate = self
        return cell
    }
}

// MARK: - UITableViewDelegate

extension MovieTableViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, editActionsForRowAt indexPath: IndexPath) -> [UITableViewRowAction]? {
        let editAction = UITableViewRowAction(style: .default, title: "Edit", handler: { (action, indexPath) in
            let alert = UIAlertController(title: "", message: "Edit movie title", preferredStyle: .alert)
            alert.addTextField(configurationHandler: nil)
            alert.addAction(UIAlertAction(title: "Update", style: .default, handler: { (updateAction) in
                self.movies[indexPath.row].name = alert.textFields!.first!.text!
                self.tableView.reloadRows(at: [indexPath], with: .fade)
            }))
            alert.addAction(UIAlertAction(title: "Cancel", style: .cancel, handler: nil))
            self.present(alert, animated: false)
        })
        
        let deleteAction = UITableViewRowAction(style: .default, title: "Delete", handler: { (action, indexPath) in
            self.movies.remove(at: indexPath.row)
            tableView.reloadData()
        })
        
        editAction.backgroundColor = .gray
        
        return [deleteAction, editAction]
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
    }
}

// MARK: - AddMovieDelegate

extension MovieTableViewController: AddMovieDelegate {
    func movieWasAdded(_ movie: Movie) {
        movies.append(movie)
        navigationController?.popViewController(animated: true)
        tableView.reloadData()
    }
}

// MARK: - MovieTableViewDelegate

extension MovieTableViewController: MovieTableViewDelegate {
    func seenButtonTapped(cell: MovieTableViewCell) {
        guard let indexPath = tableView.indexPath(for: cell) else { return }
        
        if movies[indexPath.row].seen {
            cell.seenNotSeenButton.setTitle("Not Seen", for: .normal)
            movies[indexPath.row].seen = false
        } else {
            cell.seenNotSeenButton.setTitle("Seen", for: .normal)
            movies[indexPath.row].seen = true
        }
    }
}
