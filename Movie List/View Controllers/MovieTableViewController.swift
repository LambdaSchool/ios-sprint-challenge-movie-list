//
//  MovieTableViewController.swift
//  Movie List
//
//  Created by Jon Bash on 2019-10-11.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import UIKit

class MovieTableViewController: UIViewController {
    
    var movies: [Movie] = []
    
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "AddMovieSegue" {
            guard let addMovieVC = segue.destination as? AddMovieViewController else { return }
            
            addMovieVC.delegate = self
        }
    }
}

extension MovieTableViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return movies.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "MovieCell", for: indexPath) as? MovieTableViewCell
            else { return UITableViewCell() }
        
        cell.movie = movies[indexPath.row]
        
        return cell
    }
}

extension MovieTableViewController: AddMovieDelegate {
    func movieWasSaved(_ movie: Movie) {
        movies.append(movie)
        tableView.reloadData()
        dismiss(animated: true, completion: nil)
    }
}

extension MovieTableViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        editMovieTitle(at: indexPath)
    }
    
    func editMovieTitle(at movieIndexPath: IndexPath) {
        let oldTitle = movies[movieIndexPath.row].title
        
        let editAlert = UIAlertController(title: "Edit movie title", message: "current title:\n\"\(oldTitle)\"", preferredStyle: .alert)
        editAlert.addTextField { (movieTitleField) in
            movieTitleField.placeholder = "Movie Title"
        }
        editAlert.addAction(UIAlertAction(title: "Cancel", style: .cancel, handler: { action in
            self.tableView.deselectRow(at: movieIndexPath, animated: true)
        }))
        editAlert.addAction(UIAlertAction(title: "Save new title", style: .default, handler: { action in
            guard let newTitle = editAlert.textFields?[0].text, !(newTitle.isEmpty) else {
                self.present(Alerts.EmptyField, animated: true, completion: nil)
                self.tableView.deselectRow(at: movieIndexPath, animated: true)
                return
            }
            self.movies[movieIndexPath.row].title = newTitle
            self.tableView.reloadData()
        }))
        
        present(editAlert, animated: true, completion: nil)
    }
}
