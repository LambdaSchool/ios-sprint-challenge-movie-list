//
//  MovieTableViewController.swift
//  Movie List
//
//  Created by morse on 10/11/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import UIKit

class MovieTableViewController: UIViewController {
    
    @IBOutlet weak var tableView: UITableView!

    
    struct PropertyKeys {
        static let MovieCell = "MovieCell"
        static let AddFriendModalSegue = "AddFriendModalSegue"
    }
    
    var movies: [Movie] = [] {
        didSet {
            Movie.saveToFile(movies: movies)
        }
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        
        movies = Movie.loadFromFile()
    }
    
    

    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == PropertyKeys.AddFriendModalSegue {
            if let addMovieVC = segue.destination as? AddMovieViewController {
                addMovieVC.delegate = self
            }
        }
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    

}

extension MovieTableViewController: UITableViewDataSource, UITableViewDelegate {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return movies.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: PropertyKeys.MovieCell, for: indexPath) as? MovieTableViewCell else { return UITableViewCell() }
        
        let movie = movies[indexPath.row]
        cell.delegate = self
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

extension MovieTableViewController: MovieWatchedDelegate {
    
    func toggleMovieWatched(for cell: MovieTableViewCell) {
        
        guard let indexPath = tableView.indexPath(for: cell) else { return }
        
        movies[indexPath.row].watched.toggle()
        
        tableView.reloadData()
    }
}

extension MovieTableViewController: AddMovieDelegate {
    func movieWasAdded(_ movie: Movie) {
        movies.append(movie)
        dismiss(animated: true, completion: nil)
        tableView.reloadData()
    }
}
