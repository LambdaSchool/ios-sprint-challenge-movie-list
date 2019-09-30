//
//  MovieListTableViewController.swift
//  Movie List
//
//  Created by Craig Swanson on 9/29/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import UIKit

class MovieListTableViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    
    var movies: [Movie] = []
    
    var persistentStoreURL: URL! {
        if let documentURL = try? FileManager.default.url(for: .documentDirectory, in: .userDomainMask, appropriateFor: nil, create: true) {
                let persistentStoreURL = documentURL.appendingPathComponent("movieList.plist")
                return persistentStoreURL
            }
            return nil
        }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if let data = try? Data(contentsOf: persistentStoreURL),
            let savedMovies = try? PropertyListDecoder().decode([Movie].self, from: data) {
            movies = savedMovies
        }
    }
    
    func save() {
        if let data = try? PropertyListEncoder().encode(movies) {
            try? data.write(to: persistentStoreURL)
        }
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "NewMovieSegue" {
            guard let newMovieVC = segue.destination as? NewMovieViewController
                else { fatalError() }
            newMovieVC.delegate = self
        }
    }
    
}

// MARK: Table View Data Source
extension MovieListTableViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        movies.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "MovieCell", for: indexPath) as? MovieListTableViewCell else { return UITableViewCell() }
        
        let movie = movies[indexPath.row]
        cell.movie = movie
        return cell
    }
}

// MARK: Table View Delegate (Swipe to Delete)
extension MovieListTableViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, editingStyleForRowAt indexPath: IndexPath) -> UITableViewCell.EditingStyle {
        return .delete
    }
    
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        movies.remove(at: indexPath.row)
        tableView.deleteRows(at: [indexPath], with: .automatic)
        
        save()
    }
}

// MARK: New Movie VC Delegate
extension MovieListTableViewController: NewMovieDelegate {
    func movieWasAdded(_ movie: Movie) {
        movies.append(movie)
        tableView.reloadData()
        dismiss(animated: true, completion: nil)
        
        save()
    }
}

//extension MovieListTableViewController: SeenStatusChange {
//    func wasSeenStatus(_ movie: Movie) {
//        movie.seen.toggle()
//        tableView.reloadData()
//    }
//    
//    
//}
