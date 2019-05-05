//
//  MovieListViewController.swift
//  Movie List
//
//  Created by Nathan Hedgeman on 5/4/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import UIKit

class MovieListViewController: UIViewController, UITableViewDelegate, UITableViewDataSource, MovieTableViewCellDelegate{
    //Handles the Seen button on the specific row that its tapped on
    func seenButtonTapped(on cell: MovieTableViewCell) {
        guard let indexPath = MovieListTableView.indexPath(for: cell) else {return}
        
        let movie = movieController.movieList[indexPath.row]
        movieController.tapIsSeen(movie: movie)
        MovieListTableView.reloadRows(at: [indexPath], with: .automatic)
        }
    
    

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBOutlet weak var MovieListTableView: UITableView!
    
    //Decides how many cells to make. # of cells being how ever many entries are in the movie controller index.
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return movieController.movieList.count
    }
    // Create Reusable Movie Cells or else make a black UITable View Cell
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "MovieCell", for: indexPath) as? MovieTableViewCell else {return UITableViewCell() }
        
        let movie = movieController.movieList[indexPath.row]
        cell.delegate = self
        cell.movie = movie
        
        return cell
    }
    
    let movieController = MovieController()

}
