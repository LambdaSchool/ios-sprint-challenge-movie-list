//
//  MoviesTableViewController.swift
//  Movies
//
//  Created by Simon Elhoej Steinmejer on 27/07/18.
//  Copyright © 2018 Simon Elhoej Steinmejer. All rights reserved.
//

import UIKit

class MoviesTableViewController: UITableViewController, MovieHandler, MovieCellDelegate, UISearchBarDelegate
{
    //MARK: - Properties
    
    var filteredMovies = [Movie]()
    var movieController: MovieController?

    @IBOutlet weak var moviesSearchBar: UISearchBar!
    
    //MARK: - Functions
    
    override func viewWillAppear(_ animated: Bool)
    {
        super.viewWillAppear(animated)
        filteredMovies = movieController!.movies
        tableView.reloadData()
    }
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        tableView.allowsSelection = false
        moviesSearchBar.delegate = self
    }
    
    func changeValueForDidWatch(forMovie movie: Movie)
    {
        movieController?.updateDidWatch(onMovie: movie)
        filteredMovies = movieController!.movies
        moviesSearchBar.text = nil
        moviesSearchBar.endEditing(true)
        tableView.reloadData()
    }
    
    //MARK: - Search Bar Delegate

    func searchBar(_ searchBar: UISearchBar, textDidChange searchText: String)
    {
        if searchText.isEmpty
        {
            filteredMovies = movieController!.movies
            searchBar.endEditing(true)
            tableView.reloadData()
        }
        else
        {
            filteredMovies = movieController!.movies.filter({$0.name.lowercased().contains(searchText.lowercased())})
        }
        tableView.reloadData()
    }
    

    // MARK: - Table view data source

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int
    {
        return filteredMovies.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell
    {
        let cell = tableView.dequeueReusableCell(withIdentifier: "movieCell", for: indexPath) as! MovieCell

        let movie = filteredMovies[indexPath.row]
        cell.movie = movie
        cell.delegate = self
        
        return cell
    }
    
    override func tableView(_ tableView: UITableView, editActionsForRowAt indexPath: IndexPath) -> [UITableViewRowAction]?
    {
        let deleteAction = UITableViewRowAction(style: .destructive, title: "Delete", handler: deleteHandlerFunction)
        
        return [deleteAction]
    }
    
    private func deleteHandlerFunction(action: UITableViewRowAction, indexPath: IndexPath)
    {
        movieController?.deleteMovie(at: indexPath.row)
        self.tableView.deleteRows(at: [indexPath], with: .automatic)
    }

}


















