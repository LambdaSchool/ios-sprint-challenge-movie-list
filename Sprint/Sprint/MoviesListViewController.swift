//
//  MoviesListViewController.swift
//  Sprint
//
//  Created by Stephanie Bowles on 5/6/19.
//  Copyright © 2019 Stephanie Bowles. All rights reserved.
//

import UIKit

class MoviesListViewController: UIViewController, UITableViewDelegate, UITableViewDataSource, MovieTableViewCellDelegate {
    
    let movieController = MovieController()
    
    func seenButtonWasTapped(on cell: MovieTableViewCell) {
        guard let indexPath = movieTableView.indexPath(for: cell) else {return}
        let movie =
            movieController.movies[indexPath.row]
        movieController.toggleSeen(movie: movie)
        movieTableView.reloadRows(at:[indexPath], with: .fade)
    }
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return movieController.movies.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "MovieCell", for: indexPath) as? MovieTableViewCell else { return UITableViewCell()}
        
        let movie = movieController.movies[indexPath.row]
        cell.movie = movie
 
        cell.delegate = self
        
        let isSeenText = movie.isSeen ? "Seen" : "Not Seen"
        cell.seenButton.setTitle(isSeenText, for: .normal)
        
        
        return cell
        
//        let cell = tableView.dequeueReusableCell(withIdentifier: "MovieCell", for: indexPath)
//
//
//        guard let movieCell = cell as? MovieTableViewCell else {return cell}
//
//        let movie = movieController.movies[indexPath.row]
////        movieCell.movie = movie
//        movieCell.textLabel?.text = movie.name
//        movieCell.delegate = self
//        //prolly gotta change this
//        return cell
    }
    
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        
        if editingStyle == .delete {
            //         Implement the commit editingStyle method to allow for deleting question cells. (remember to delete a Question before you delete the cell)
            movieController.deleteMovie(indexPath: indexPath.row)
            tableView.deleteRows(at: [indexPath], with: .fade)
        }
    }
    

    @IBOutlet weak var movieTableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        movieTableView.dataSource = self
        movieTableView.delegate = self
    
    }
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(true)
        movieTableView.reloadData()
    }
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if (segue.identifier == "addMovieSegue") {
          let destination = segue.destination as! AddMovieViewController
            destination.movieController = movieController
        }
    }

  

}
