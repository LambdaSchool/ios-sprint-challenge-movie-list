//
//  MovieListTableViewController.swift
//  Movie List
//
//  Created by Jason Hoover on 5/15/20.
//  Copyright © 2020 Lambda School. All rights reserved.
//

import UIKit

class MovieListTableViewController: UITableViewController {
    
    var movies = [""]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return movies.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "movieTitles", for: indexPath) as?  else {
            fatalError("Cell identifier is wrong or the cell is not of type of expected type MoviesTableViewCell")
        }
        
        let movie = movies[indexPath.row]
        
        cell.nameLabel.text = movie.name
        
        return cell
    }
    
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "showNewMovieScreen" {
            let newMovieVC = segue.destination as? AddMovieViewController
            
            
            newMovieVC?.delegate = self
        }
    }
    
}
