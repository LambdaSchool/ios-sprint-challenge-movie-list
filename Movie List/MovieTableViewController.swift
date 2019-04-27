//
//  MovieTableViewController.swift
//
//  Created by Alex Perse on 4/26/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//


import UIKit

protocol AddMovieDelegate {
    func newMovieWasAdded(movieName: String)
}

class MovieTableViewController: UITableViewController {

    // things that happen just after the view appears on the screen
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.reloadData()
    }
    
    // things that happen just before the view appears on the screen
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        // making sure the table view is using the SAME copy of the moviesController instance
        
        moviesController = MoviesController.shared
        tableView.reloadData()
    }
    
    // the table view expects a moviescontroller
    var moviesController: MoviesController?
    
    // this controls how many rows the tableView will have
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return moviesController?.movies.count ?? 0
//        return 1 sanity check
    }
    
    //tells the tableView what information to show inside the cell 
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "MovieCell", for: indexPath)
        
        // Configure the cell...
        cell.textLabel?.text = moviesController?.movies[indexPath.row]
        
//        cell.textLabel?.text = "Sanity check"
        return cell
    }
    
}
