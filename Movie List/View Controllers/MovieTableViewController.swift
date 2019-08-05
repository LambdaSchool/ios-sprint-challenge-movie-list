//
//  MovieTableViewController.swift
//  Movie List
//
//  Created by Casualty on 8/4/19.
//  Copyright © 2019 Thomas Dye. All rights reserved.
//

import UIKit

class MovieTableViewController: UIViewController {

    // Adding tablieView outlet
    @IBOutlet weak var tableView: UITableView!
    
    var movies: [Movie] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }
    
    
    // MARK: - Navigation
    
    @IBOutlet weak var movieSelected: MovieTableViewCell!
    
    
    // Add Movie Segue
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "AddMovieSegue" {
            guard let viewController = segue.destination as? AddMovieViewController else { return }
            
            viewController.movieDelegate = self
        }
    }
    
}

// MovieTableViewController extension
extension MovieTableViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return movies.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "MovieCell", for: indexPath) as? MovieTableViewCell
            else { return UITableViewCell() }
        
        cell.movie = movies[indexPath.row]
        cell.newDelegate = self
        return cell
    }
    
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == UITableViewCell.EditingStyle.delete {
            movies.remove(at: indexPath.row)
            tableView.deleteRows(at: [indexPath], with: UITableView.RowAnimation.automatic)
        }
    }
}

// MovieTableViewController add movie and append it
extension MovieTableViewController: AddMovieDelegate {
    
    // addMovie required function
    func addMovie(_ movie: Movie) {
        movies.append(movie)
        tableView.reloadData()
        navigationController?.popViewController(animated: true)
    }
    
    // toggleButtonSeenNotSeen required function
    func toggleButtonSeenNotSeen(_ movie: Movie) -> Movie? {
        guard let currentMovie = returnIndex(movie: movie) else { return nil }
        movies[currentMovie].seen = !movies[currentMovie].seen
        return movies[currentMovie]
    }
    
    // deleteMovie required function
    func deleteMovie(_ movie: Movie) {
        guard let currentMovie = returnIndex(movie: movie) else { return }
        movies.remove(at: currentMovie)
    }
    
    // returnIndex not a required function
    func returnIndex(movie: Movie) -> Int? {
        return movies.firstIndex(of: movie)
    }
}
