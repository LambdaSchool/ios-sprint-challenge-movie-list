//
//  MovieListViewController.swift
//  Movie List
//
//  Created by Jeremy Taylor on 7/27/18.
//  Copyright © 2018 Lambda School. All rights reserved.
//

import UIKit

class MovieListViewController: UIViewController, UITableViewDataSource, UITableViewDelegate, MovieControllerProtocol, MovieTableViewCellDelegate {
    
    
    
    
    // MARK: - Properties
    
    
    @IBOutlet weak var tableView: UITableView!
    var movieController: MovieController?
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        tableView.reloadData()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        tableView.dataSource = self
        tableView.delegate = self
        
        
        
    }
    
    func toggleIsSeen(for cell: MovieTableViewCell) {
        let indexPath = tableView.indexPath(for: cell)
        guard let movie = movieController?.movies[(indexPath?.row)!] else { return }
        movieController?.toogleSeen(movie: movie)
        
        tableView.reloadRows(at: [indexPath!], with: .fade)
        
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        guard let movieController = movieController else { return 0 }
        
        return movieController.movies.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "MovieCell", for: indexPath) as? MovieTableViewCell else { return MovieTableViewCell()}
        
        cell.delegate = self
        
        // Configure the cell
        
        let title: String
        title = (movieController?.movies[indexPath.row].seen)! ? "Seen" : "Not seen"
        
        cell.movieTitleLabel.text = movieController?.movies[indexPath.row].title
        cell.toogleSeenButton.setTitle(title, for: .normal)
    
        return cell
    }
    
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        
        if editingStyle == .delete {
            
            // Delete a cell
            
            guard let movie = movieController?.movies[indexPath.row] else { return }
            
            movieController?.delete(movie: movie)
            
            tableView.deleteRows(at: [indexPath], with: .fade)
            
            
            
        }
    }
}
