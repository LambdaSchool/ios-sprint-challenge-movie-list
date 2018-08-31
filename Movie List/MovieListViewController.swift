//
//  MovieListViewController.swift
//  Movie List
//
//  Created by Dillon McElhinney on 8/31/18.
//  Copyright © 2018 Lambda School. All rights reserved.
//

import UIKit

class MovieListViewController: UIViewController, UITableViewDataSource, UITableViewDelegate, UISearchResultsUpdating, MovieControllerProtocol, MovieTableViewCellDelegate {

    // MARK: - Lifecycle Methods
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //Set table view's data source and delegate
        tableView.dataSource = self
        tableView.delegate = self
        filteredMovies = movieContoller?.movies
        
        //Set up search controller
        searchController = UISearchController(searchResultsController: nil)
        searchController.searchResultsUpdater = self
        searchController.dimsBackgroundDuringPresentation = false
        
        searchController.searchBar.sizeToFit()
        tableView.tableHeaderView = searchController.searchBar
        
        definesPresentationContext = true
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        //Sort movies and reload the table view's data before it appears
        movieContoller?.sortMoviesAlphabetically()
        filteredMovies = movieContoller?.movies
        searchController.searchBar.text = ""
        tableView.reloadData()
    }
    
    // MARK - Properties
    @IBOutlet weak var tableView: UITableView!
    var movieContoller: MovieController?
    var filteredMovies: [Movie]!
    var searchController: UISearchController!
    let red = UIColor(red: 219/255, green: 20/255, blue: 16/255, alpha: 1)
    
    
    // MARK: - Table view data source
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return filteredMovies.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        //Get a cell and the movie associated with the index path.
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "MovieCell", for: indexPath) as? MovieTableViewCell else { return UITableViewCell() }
        let movie = filteredMovies[indexPath.row]
        
        //Pass the movie to the cell so it can set itself up, and set its delegate.
        cell.movie = movie
        cell.delegate = self
        
        return cell
    }
    
    //MARK: - Table view delegate
    //Create a delete action and add it ot the edit actions
    func tableView(_ tableView: UITableView, editActionsForRowAt indexPath: IndexPath) -> [UITableViewRowAction]? {
        let delete = UITableViewRowAction(style: .normal, title: "Delete") { action, index in
            //Make sure there is a movie at the index path
            guard let movie = self.movieContoller?.movies[indexPath.row], let index = self.filteredMovies.index(of: movie) else { return }
            //Delete the movie from the movies array
            self.movieContoller?.deleteMovie(movie)
            self.filteredMovies.remove(at: index)
            //Delete the row from the table view
            tableView.deleteRows(at: [indexPath], with: .automatic)
        }
        delete.backgroundColor = red
        
        return [delete]
    }
    
    // MARK: - Search results updating
    func updateSearchResults(for searchController: UISearchController) {
        if let searchText = searchController.searchBar.text {
            //If there is text in the search bar, filter the presented movies by that text
            filteredMovies = searchText.isEmpty ? movieContoller?.movies : movieContoller?.filterBy(string: searchText)
        }
        
        tableView.reloadData()
    }
    
    // MARK: - Movie table view cell delegate
    func toggleIsSeen(on cell: MovieTableViewCell) {
        //Unwrap movie and index path
        guard let movie = cell.movie, let indexPath = tableView.indexPath(for: cell) else { return }
        
        //Toggle is seen on the movie
        movieContoller?.toggleIsSeen(on: movie)
        filteredMovies[indexPath.row].isSeen = !filteredMovies[indexPath.row].isSeen
        //Reload the row 
        tableView.reloadRows(at: [indexPath], with: .fade)
    }
    
}
