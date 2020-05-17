//
//  MovieListTableViewController.swift
//  Movie List
//
//  Created by Jason Hoover on 5/15/20.
//  Copyright © 2020 Lambda School. All rights reserved.
//

import UIKit

class MovieListTableViewController: UITableViewController {
    
    var theMovies: [Movies] = [Movies(title: "The Green Mile", watched: true),]
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.dataSource = self
        
    }
    
    
    // MARK: - Table view data source
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return theMovies.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "movieTitles", for: indexPath) as? MoviesTableViewCell else {
            fatalError("Cell identifier is wrong or the cell is not of type of expected type MoviesTableViewCell")
            
            
        }
        
        let newMovies = theMovies[indexPath.row]
        
        cell.movieTitle.text = newMovies.title
        
        return cell
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "showNewMovieScreen" {
            let newMovieVC = segue.destination as? AddMovieViewController
            
            // "Hey newFriendVC, I'm the one to talk to in order to add a friend to the array"
            newMovieVC?.delegate=self
        }
    }
}
    
extension MovieListTableViewController: AddMovieDelegate {
    func movieCreated(newMovie: Movies) {
        theMovies.append(newMovie)
        tableView.reloadData()
    }
}
