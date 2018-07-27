//
//  MovieListViewController.swift
//  Movie List
//
//  Created by Jeremy Taylor on 7/27/18.
//  Copyright © 2018 Lambda School. All rights reserved.
//

import UIKit

class MovieListViewController: UIViewController, UITableViewDataSource, UITableViewDelegate, MovieControllerProtocol {
    
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
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        guard let movieController = movieController else { return 0 }
        
        return movieController.movies.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "MovieCell", for: indexPath) as? MovieTableViewCell else { return MovieTableViewCell()}
        
        // Configure the cell
        
        cell.movieTitleLabel.text = movieController?.movies[indexPath.row].title
        
        cell.toogleSeenButton.tag = indexPath.row
        
        
        
        
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
