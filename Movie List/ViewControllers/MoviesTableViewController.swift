//
//  MoviesTableViewController.swift
//  Movie List
//
//  Created by Clean Mac on 4/19/20.
//  Copyright © 2020 Lambda School. All rights reserved.
//

import UIKit

class MoviesTableViewController: UITableViewController {

    var movies: [Movie] = []

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return movies.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "MovieCell", for: indexPath)

        // Configure the cell...
        let movie = movies[indexPath.row]
        
        cell.textLabel?.text = movie.module
        cell.detailTextLabel?.text = movie.movie
        
        return cell
    }
    

}
