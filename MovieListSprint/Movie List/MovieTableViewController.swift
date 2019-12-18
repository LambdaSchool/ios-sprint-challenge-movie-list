//
//  MovieTableViewController.swift
//  Movie List
//
//  Created by Taylor Lyles on 4/26/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import UIKit

class MovieTableViewController: UITableViewController, MoviesPresenter {
    var movieController: MovieController?
    
    
    
    @IBOutlet weak var hasWatched: UISwitch!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        tableView.reloadData()
    }
    
    
    
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        guard let numberOfCells = movieController?.movies.count else { return 0 }
        
        return numberOfCells
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "MovieCell", for: indexPath)
        
        guard let movieCell = cell as? MovieTableViewCell else { return cell }
        
        let movie = movieController?.movies[indexPath.row]
        movieCell.movieTitleLabel.text = movie?.movieTitle
        
        return cell
    }
    

    
    
    
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            
            guard let movieToDelete = movieController?.movies[indexPath.row] else { return }
            movieController?.deleteMovie(movieToBeDeleted: movieToDelete)
            tableView.deleteRows(at: [indexPath], with: .fade)
        }
    }
   
}


