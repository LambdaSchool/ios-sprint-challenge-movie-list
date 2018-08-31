//
//  MoviesListViewController.swift
//  Movie List
//
//  Created by Jason Modisett on 8/31/18.
//  Copyright © 2018 Lambda School. All rights reserved.
//

import UIKit

class MoviesListViewController: UIViewController, UITableViewDelegate, UITableViewDataSource, UISearchBarDelegate, MovieControllerProtocol, MovieTableViewCellDelegate {

    // Lifecycle Methods
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        sortTitlesAlphabetically()
        tableView.reloadData()
    }
    
    func sortTitlesAlphabetically() {
        guard let movies = movieController?.movies else { return }
        moviesSorted = movies.sorted { $0.title < $1.title }
    }
    
    func seenButtonWasTapped(on cell: MovieTableViewCell) {
        guard let indexPath = tableView.indexPath(for: cell),
              let movie = movieController?.movies[indexPath.row] else { return }
        
        movieController?.toggleHasSeen(movie)
        tableView.reloadRows(at: [indexPath], with: .automatic)
        
        let hapticFeedback = UIImpactFeedbackGenerator(style: .medium)
        hapticFeedback.impactOccurred()
    }
    
    
    // UITableViewDataSource methods
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return moviesSorted.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "MovieCell", for: indexPath) as? MovieTableViewCell else { return UITableViewCell() }
        
        cell.delegate = self
        cell.movie = moviesSorted[indexPath.row]
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            movieController?.deleteMovie(at: indexPath.row)
            sortTitlesAlphabetically()
            tableView.deleteRows(at: [indexPath], with: .fade)
        }
    }
    
    
    // IBOutlets & Properties
    @IBOutlet weak var tableView: UITableView!
    @IBOutlet weak var searchBar: UISearchBar!
    
    var movieController: MovieController?
    var moviesSorted: [Movie] = []
    
}
