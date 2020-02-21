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
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
        tableView.dataSource = self
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "ShowAddMovieSegue" {
            if let amvc = segue.destination as? AddMovieViewController {
                amvc.delegate = self
            }
        }
    }
}

extension MovieListViewController: AddMovieDelegate {
    
    func didAddMovie(_ movie: Movie) {
        movies.append(movie)
        tableView.reloadData()
    }
}

extension MovieListViewController: UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return movies.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "MovieCell", for: indexPath)
        
        if let movieCell = cell as? MovieTableViewCell {
            movieCell.movie = movies[indexPath.row]
        }
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, editActionsForRowAt indexPath: IndexPath) -> [UITableViewRowAction]? {
        
        return [
            UITableViewRowAction(
                style: .destructive,
                title: "Delete",
                handler: { (action, indexPath) in
                    self.movies.remove(at: indexPath.row)
                    tableView.deleteRows(at: [indexPath], with: .right)
                }),
            UITableViewRowAction(
                style: .normal,
                title: "Edit",
                handler: { (_, indexPath) in
                    self.editMovieAt(indexPath)
                })
        ]
    }
    
    func editMovieAt(_ indexPath: IndexPath) {
        let alertController = UIAlertController(
            title: "Edit Movie",
            message: "Enter a new movie name",
            preferredStyle: .alert
        )
        
        var movieNameTextField: UITextField?
        alertController.addTextField { textField in
            textField.placeholder = "Movie name"
            movieNameTextField = textField
        }
        
        alertController.addAction(UIAlertAction(
            title: "Confirm",
            style: .default,
            handler: { _ in
                guard let movieName = movieNameTextField?.text,
                    !movieName.trimmingCharacters(in: NSCharacterSet.whitespacesAndNewlines).isEmpty else { return }
                
                let movie = self.movies[indexPath.row]
                movie.name = movieName
                if let cell = self.tableView.cellForRow(at: indexPath) as? MovieTableViewCell {
                    cell.updateViews()
                }
        }))
        
        alertController.addAction(UIAlertAction(title: "Cancel", style: .cancel))
        
        self.present(alertController, animated: true)
    }
}
