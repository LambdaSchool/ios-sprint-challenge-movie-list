//
//  MoviesTableViewController.swift
//  Movie List
//
//  Created by Patrick Millet on 11/8/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import UIKit

class MoviesTableViewController: UITableViewController, HasSeenDelegate, AddMovieDelegate {
    

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    // MARK: Properties
    
    var movies: [Movie] = []
    
    var hasSeenMovie = SeenController()
    
    func movieWasAdded(movie: Movie) {
        movies.append(movie)
        tableView.reloadData()
        dismiss(animated: true, completion: nil)
        
    }
    
    // MARK: - Table view data source

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return movies.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "NewMovieCell", for: indexPath) as? MoviesTableViewCell else {
            fatalError("Fatal Error: Problem casting cell as custom cell type")
        }
        
        let singleMovie = movies[indexPath.row]
        
//        cell.textLabel?.text = singleMovie.name
        cell.seen = singleMovie
        cell.delegate = self
        
        return cell
    }
    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if segue.identifier == "AddMovieSegue" {
            if let addMovieVC = segue.destination as? AddMovieViewController {
                addMovieVC.movieDelegate = self
            }
        }
    }
    
    // MARK: - Delegate Method

    func toggleSeen(on cell: MoviesTableViewCell) {
        guard let indexPath = tableView.indexPath(for: cell) else { return }
        let seenSwitch = hasSeenMovie.switches[indexPath.row]
        
        hasSeenMovie.toggleSeen(seenSwitch: seenSwitch)
        tableView.reloadRows(at: [indexPath], with: .automatic)
    }
}


