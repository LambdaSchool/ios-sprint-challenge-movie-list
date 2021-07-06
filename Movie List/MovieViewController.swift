//
//  MovieViewController.swift
//  Movie List
//
//  Created by Kobe McKee on 4/28/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import UIKit

class MovieViewController: UIViewController, UITableViewDataSource, MovieControllerProtocol, MovieTableViewCellDelegate {

    @IBOutlet weak var tableView: UITableView!
    var movieController: MovieController?
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.dataSource = self
    }
    
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(true)
        tableView.reloadData()
    }
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        guard let movieCount = movieController?.movies.count else { return 0 }
        return movieCount
    }
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let movieCell = tableView.dequeueReusableCell(withIdentifier: "MovieCell", for: indexPath)
        
        guard let cell = movieCell as? MovieTableViewCell else { fatalError() }
        guard let mController = movieController else { fatalError() }
        
        let movie = mController.movies[indexPath.row]
        cell.movie = movie
        cell.delegate = self
        return cell
    }
    
    
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        guard let movie = movieController?.movies[indexPath.row] else { return }
        
        movieController?.deleteMovie(movie: movie)
        tableView.deleteRows(at: [indexPath], with: .fade)
    }
    
    
    func hasSeenButtonPressed(on cell: MovieTableViewCell) {
        let indexPath = tableView.indexPath(for: cell)
        guard let path = indexPath else { return }
        let index = path.row
        
        guard let movie = movieController?.movies[index] else { return }
        movieController?.toggleHasSeen(movie: movie)
        tableView.reloadRows(at: [path], with: .automatic)
    }
    

}
