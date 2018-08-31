//
//  MovieListViewController.swift
//  Movie List
//
//  Created by Dillon McElhinney on 8/31/18.
//  Copyright © 2018 Lambda School. All rights reserved.
//

import UIKit

class MovieListViewController: UIViewController, UITableViewDataSource, MovieControllerProtocol, MovieTableViewCellDelegate {

    override func viewDidLoad() {
        super.viewDidLoad()

        tableView.dataSource = self
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        tableView.reloadData()
    }

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
        
        //Pass the movie to the cell so it can set itself up.
        cell.movie = movie
        cell.delegate = self
        
        return cell
    }
    
    // MARK: - Movie table view cell delegate
    func toggleIsSeen(on cell: MovieTableViewCell) {
        guard let movie = cell.movie, let indexPath = tableView.indexPath(for: cell) else { return }
        
        movieContoller?.toggleIsSeen(on: movie)
        tableView.reloadRows(at: [indexPath], with: .fade)
    }
    
}
