//
//  MovieListViewViewController.swift
//  Movie List
//
//  Created by Chris Price on 5/3/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import UIKit

class MovieListViewController: UIViewController, UITableViewDataSource, UITableViewDelegate, MovieTableViewCellDelegate {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.delegate = self
        tableView.dataSource = self
    }
    
    // MARK: - MovieTableViewCellDelegate
    
    func seenButtonWasTapped(on cell: MovieTableViewCell) {
        
        guard let indexPath = tableView.indexPath(for: cell) else { return }
        
        let movie = movieController.movies[indexPath.row]
        
        movieController.toggleWasSeen(for: movie)
        
        tableView.reloadRows(at: [indexPath], with: .none)
    }
    
    // MARK: - UITableViewDataSource
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return movieController.movies.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "MovieCell", for: indexPath) as? MovieTableViewCell else { fatalError("Cell must have reuse identifier MovieCell, and be of type MovieTableViewCell") }
        
        let movie = movieController.movies[indexPath.row]
        
        cell.movie = movie
        cell.delegate = self
        
        return cell
    }
    
    // MARK: - Properties
    
    let movieController = MovieController()
    
    
    @IBOutlet weak var tableView: UITableView!
    
}

/* Replica of Julian's ArtGallery project PaintingListViewController */
