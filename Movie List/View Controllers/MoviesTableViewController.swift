//
//  MoviesTableViewController.swift
//  Movie List
//
//  Created by Linh Bouniol on 7/27/18.
//  Copyright © 2018 Lambda School. All rights reserved.
//

import UIKit

class MoviesTableViewController: UIViewController, UITableViewDataSource, MovieTableViewCellDelegate, MovieControllerProtocol {
    
    var movieController: MovieController?
    
    @IBOutlet var tableView: UITableView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        tableView.dataSource = self
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        tableView.reloadData()
    }

    // MARK: - UITableViewDataSource
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return movieController?.movies.count ?? 0
        
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "MovieCell", for: indexPath)
        
        guard let movieCell = cell as? MovieTableViewCell else { return cell }
        
        let movie = movieController?.movies[indexPath.row]
//        movieCell.movie = movie
        
        movieCell.nameLabel.text =  movie!.name
        
        if movie!.isSeen {
            movieCell.isSeenButton.setTitle("Seen", for: .normal)
        } else {
            movieCell.isSeenButton.setTitle("Not Seen", for: .normal)
            
        }
        
        movieCell.delegate = self
        
        return movieCell
    }
    
    func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        return true
    }
    
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            guard let movie = movieController?.movies[indexPath.row] else { return }
            movieController?.delete(movie: movie)
            tableView.deleteRows(at: [indexPath], with: .automatic)
        }
    }
    
    // MARK: - MovieTableViewCellDelegate
    
    func seenButtonWasTapped(on cell: MovieTableViewCell) {
        guard let index = tableView.indexPath(for: cell) else { return }
        
        guard let movie = movieController?.movies[index.row] else { return }
        
        movieController?.toggleIsSeen(for: movie)
        
        tableView.reloadRows(at: [index], with: .automatic)
    }
    
    
}
