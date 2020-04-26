//
//  MovieViewController.swift
//  Movie List
//
//  Created by Sammy Alvarado on 4/18/20.
//  Copyright © 2020 Lambda School. All rights reserved.
//

import UIKit

class MovieViewController: UIViewController {
    
   // We created an instiance of a movieController in over to pass information of a new movie object 
    var movieContoller = MovieController()

    @IBOutlet weak var tableView: UITableView!
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "addMovieSegue" {
            guard let destVC = segue.destination as? AddMovieViewController else { return }
            destVC.movieController = movieContoller
        }
    }
    
}

extension MovieViewController: UITableViewDataSource, MovieTableViewCellDelegate {
    
    override func viewDidLoad() {
        tableView.dataSource = self
    }
    
    override func viewWillAppear(_ animated: Bool) {
        tableView.reloadData()
    }
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return movieContoller.movies.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
       guard let cell = tableView.dequeueReusableCell(withIdentifier: "MovieCell", for: indexPath) as? MovieTableViewCell else { return UITableViewCell()}

        let movie = movieContoller.movies[indexPath.row]
        cell.movies = movie
        cell.delegate = self
        return cell
    }
    
    
    // This function allow me to pass the action of the button press to the movie view controller formt he movie cell. 
    func hasSeenButtonWasTapped(onCell cell: MovieTableViewCell) {
           
           guard let indexPath = tableView.indexPath(for: cell) else { return }
           let movie = movieContoller.movies[indexPath.row]
           
           movieContoller.updateHasSeen(forMovie: movie)
           tableView.reloadRows(at: [indexPath], with: .automatic)
       }
    
}
