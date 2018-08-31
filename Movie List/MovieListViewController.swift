//
//  MovieListViewController.swift
//  Movie List
//
//  Created by Dillon McElhinney on 8/31/18.
//  Copyright © 2018 Lambda School. All rights reserved.
//

import UIKit

class MovieListViewController: UIViewController, UITableViewDataSource, UITableViewDelegate, MovieControllerProtocol, MovieTableViewCellDelegate {

    // MARK: - Lifecycle Methods
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //Set table view's data source and delegate
        tableView.dataSource = self
        tableView.delegate = self
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        //Reload the table view's data before it appears
        tableView.reloadData()
    }
    
    // MARK - Properties
    @IBOutlet weak var tableView: UITableView!
    var movieContoller: MovieController?
    
    
    // MARK: - Table view data source
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return movieContoller?.movies.count ?? 0
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        //Get a cell and the movie associated with the index path.
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "MovieCell", for: indexPath) as? MovieTableViewCell,
            let movie = movieContoller?.movies[indexPath.row] else { return UITableViewCell() }
        
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
            guard let movie = self.movieContoller?.movies[indexPath.row] else { return }
            //Delete the movie from the movies array
            self.movieContoller?.deleteMovie(movie)
            //Delete the row from the table view
            tableView.deleteRows(at: [indexPath], with: .automatic)
        }
        delete.backgroundColor = .red
        
        return [delete]
    }
    
    // MARK: - Movie table view cell delegate
    func toggleIsSeen(on cell: MovieTableViewCell) {
        //Unwrap movie and index path
        guard let movie = cell.movie, let indexPath = tableView.indexPath(for: cell) else { return }
        
        //Toggle is seen on the movie
        movieContoller?.toggleIsSeen(on: movie)
        //Reload the row 
        tableView.reloadRows(at: [indexPath], with: .fade)
    }
    
}
