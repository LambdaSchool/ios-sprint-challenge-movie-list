//
//  MovieLIstViewController.swift
//  Movie List
//
//  Created by Carolyn Lea on 7/27/18.
//  Copyright © 2018 Lambda School. All rights reserved.
//

import UIKit

class MovieLIstViewController: UIViewController, UITabBarDelegate, UITableViewDataSource, AddMovieCellDelegate {

    @IBOutlet weak var tableView: UITableView!
    let movieController = MovieController()
    let movies: [Movie] = []
    
    func didTapSeenButton(cell: AddMovieCell) {
        guard let indexPath = tableView.indexPath(for: cell) else {return}
        let movie = movieController.movies[indexPath.row]
        movieController.toggleHasSeen(movie: movie)
        
        tableView.reloadRows(at: [indexPath], with: .fade)
    }
        
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return movieController.movies.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "AddMovieCell", for: indexPath) as! AddMovieCell
        
        let movie = movieController.movies[indexPath.row]
        
        cell.movieNameLabel.text = movie.movieName
        cell.delegate = self
      
        print("This is cell \(indexPath.row)")
        
        
        return cell
    }

}
