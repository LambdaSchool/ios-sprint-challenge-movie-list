//
//  MovieTableViewController.swift
//  Movie List
//
//  Created by Thomas Cacciatore on 4/26/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import UIKit



class MovieTableViewController: UITableViewController, MovieControllerProtocol {
    var movieController: MovieController?

    
    
    override func viewWillAppear(_ animated: Bool) {
        
        tableView.reloadData()
    
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return movieController?.movies.count ?? 0
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "MovieCell", for: indexPath)

        let movie = movieController?.movies[indexPath.row]
        cell.textLabel?.text = movie?.name
        return cell
    }

}
