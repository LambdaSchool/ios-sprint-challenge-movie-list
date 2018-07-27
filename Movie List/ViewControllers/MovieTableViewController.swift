//
//  MovieTableViewController.swift
//  Movie List
//
//  Created by De MicheliStefano on 27.07.18.
//  Copyright © 2018 Lambda School. All rights reserved.
//

import UIKit

class MovieTableViewController: UIViewController, UITableViewDataSource, UITableViewDelegate, MovieControllerProtocol, MovieTableViewCellProtocol {
    
    override func viewWillAppear(_ animated: Bool) {
        tableView.reloadData()
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.dataSource = self
        tableView.delegate = self
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return movieController?.movies.count ?? 0
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "MovieCell", for: indexPath)
        
        guard let movieCell = cell as? MovieTableViewCell else { return cell }
        guard let movie = movieController?.movies[indexPath.row] else { return cell }
        movieCell.movie = movie
        
        movieCell.delegate = self
        
        return movieCell
    }
    
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            guard let movieController = movieController else { return }
            movieController.delete(movie: movieController.movies[indexPath.row])
            tableView.deleteRows(at: [indexPath], with: .fade)
        }
    }
    
    func seenMovieButtonWasTapped(on cell: MovieTableViewCell) {
        guard let movie = cell.movie else { return }
        movieController?.toggleSeen(movie: movie)
    }
    
    // MARK: - Properties
    
    var movieController: MovieController?

    @IBOutlet weak var tableView: UITableView!
}
