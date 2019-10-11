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

extension MovieTableViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        editMovieTitle(at: indexPath)
    }
    
    func editMovieTitle(at movieIndexPath: IndexPath) {
        let editAlert = UIAlertController(title: "Edit movie title", message: "", preferredStyle: .alert)
        editAlert.addTextField { (movieTitleField) in
            movieTitleField.placeholder = "Movie Title"
        }
        editAlert.addAction(UIAlertAction(title: "Cancel", style: .cancel, handler: nil))
        editAlert.addAction(UIAlertAction(title: "Save new title", style: .default, handler: { action in
            guard let newTitle = editAlert.textFields?[0].text else { return }
            self.movies[movieIndexPath.row].title = newTitle
            self.tableView.reloadData()
            self.tableView.deselectRow(at: movieIndexPath, animated: true)
        }))
        
        present(editAlert, animated: true, completion: nil)
    }
}

extension MovieTableViewController: AddMovieDelegate {
    func movieWasSaved(_ movie: Movie) {
        movies.append(movie)
        tableView.reloadData()
        dismiss(animated: true, completion: nil)
    }
}
