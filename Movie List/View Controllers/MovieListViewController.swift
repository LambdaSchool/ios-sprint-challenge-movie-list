//
//  MovieListViewController.swift
//  Movie List
//
//  Created by Jeremy Taylor on 5/4/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import UIKit

class MovieListViewController: UIViewController, UITableViewDataSource, UITableViewDelegate, MovieTableViewCellDelegate {
    let movieController = MovieController()
    
    @IBOutlet weak var tableview: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()

        tableview.dataSource = self
        tableview.delegate = self
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        tableview.reloadData()
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return movieController.movies.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let movieCell = tableview.dequeueReusableCell(withIdentifier: "MovieCell", for: indexPath) as? MovieTableViewCell else { return MovieTableViewCell() }
        
        let movie = movieController.movies[indexPath.row]
        movieCell.movie = movie
        movieCell.delegate = self
        return movieCell
    }
    
    func toggleSeenStatus(for cell: MovieTableViewCell) {
        guard let indexPath = tableview.indexPath(for: cell) else { return }
        let movie = movieController.movies[indexPath.row]
        movie.watched.toggle()
        
        tableview.reloadRows(at: [indexPath], with: .automatic)
    }
    

    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "addMovie" {
            guard let addMovieVC = segue.destination as? MovieViewController else { return }
            
            addMovieVC.movieController = movieController
        }
    }
}
