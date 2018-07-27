//
//  MoviesListViewController.swift
//  Movie List
//
//  Created by Samantha Gatt on 7/27/18.
//  Copyright © 2018 Lambda School. All rights reserved.
//

import UIKit

class MovieListViewController: UIViewController, UITableViewDataSource, MovieControllerProtocol, MovieTableViewCellDelegate {
    

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        tableView.reloadData()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Tells the table view that its data source is this MovieListVC every time the VC loads
        tableView.dataSource = self
    }
    
    
    
    // Function that's being delegated from the cell
    func seenButtonWasTapped(onCell: MovieTableViewCell) {
        
        // Sets the index path to the index path for the cell that was tapped
        let optionalIndexPath = tableView.indexPath(for: onCell)
        guard let unwrappedIndexPath = optionalIndexPath else { return }
        let index = unwrappedIndexPath.row
        
        guard let movie = movieController?.movies[index] else { return }
        
        movieController?.toggleIsSeen(forMovie: movie)
        
        tableView.reloadRows(at: [unwrappedIndexPath], with: .automatic)
    }
    
    
    
    // Getting the information to display the cells

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        guard let movieCount = movieController?.movies.count else { fatalError("No movieController var") }
        return movieCount
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        // Compiler thinks the cell might not have an identifier of MovieCell
        let optionalCell = tableView.dequeueReusableCell(withIdentifier: "MovieCell")
        
        // If the cell has a class of MovieTableViewCell -- assign it to the constant called cell
        // If not crash the app with a message
        guard let cell = optionalCell as? MovieTableViewCell else { fatalError("Cell is not a MovieTableViewCell")}
        
        let movie = movieController?.movies[indexPath.row]
        
        // Assigns the cell's movie variable as the movie in movies array that corresponds to the cells indexPath.row
        cell.movie = movie
        
        // Sets the delegate of the cell to this MovieListViewController
        cell.delegate = self
        
        return cell
    }
    
    
    // To enable editing of the cells (So I can tell it to delete the cell)
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        
        guard let movie = movieController?.movies[indexPath.row] else { return }
        
        // Delete the movie in the movie controller
        movieController?.deleteMovie(movie: movie)
        
        // THEN delete the cell
        tableView.deleteRows(at: [indexPath], with: .fade)
    }

    @IBOutlet weak var tableView: UITableView!
    
    var movieController: MovieController?
}
