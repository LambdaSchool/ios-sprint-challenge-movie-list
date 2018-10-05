//
//  ResultsMovieViewController.swift
//  Movie List
//
//  Created by Welinkton on 10/5/18.
//  Copyright © 2018 Lambda School. All rights reserved.
//

import Foundation
import UIKit

class ResultsMovieViewController: UIViewController, UITableViewDataSource, UITableViewDelegate, MovieProtocol, MovieTableCellDelegate {
    
    var movieController: MovieController?
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func viewDidAppear(_ animated: Bool) {
        tableView.reloadData()
    }
    
    func updateMovieCell(for cell: MoviesTableViewCell) {
        guard let indexPath = tableView.indexPath(for: cell),
            let movie = movieController?.movies[indexPath.row] else {return}
        movieController?.toggleIsSeen(movie: movie)
        tableView.reloadRows(at: [indexPath], with: .automatic)
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return movieController?.movies.count ?? 0
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as? MoviesTableViewCell,
            let movie = movieController?.movies[indexPath.row] else {return UITableViewCell()}
        
        cell.movie = movie
        cell.delegate = self 
        cell.updateViews()
        return cell
    }
   
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        
        if editingStyle == .delete {
            guard let movie = movieController?.movies[indexPath.row] else {return}
            movieController?.deleteMovie(movie: movie)
            tableView.deleteRows(at: [indexPath], with: .automatic)
    }
}

    @IBOutlet var tableView: UITableView!
    
}
