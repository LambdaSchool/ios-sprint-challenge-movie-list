//
//  MoviesTableViewController.swift
//  Movie List
//
//  Created by Christian Lorenzo on 9/28/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import UIKit

class MoviesTableViewController: UITableViewController {
    
    var movies: [Movie] = []
    // var movies = [Movie]()
    // var movies: [Movie] = [Movie]()

    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return movies.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "movieCell", for: indexPath)
        guard let movieCell = cell as? MovieTableViewCell else {return cell}
        
        let movie = movies[indexPath.row]
        movieCell.movie = movie

        movieCell.delegate = self
        
        
        return cell
    }
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "AddMovieSegue" {
            if let addMovieVC = segue.destination as? AddMovieViewController {
                addMovieVC.delegate = self
            }
        }
    }
    

}

extension MoviesTableViewController: MovieTableViewCellDelegate {
    func seenNotSeenWasTapped(cell: MovieTableViewCell) {
        
        guard let movie = cell.movie else {return}
        
        guard let index = movies.firstIndex(of: movie) else {return}
        movies[index].isSeen = !movie.isSeen
        
        tableView.reloadData()
        
//        for newMovie in movies {
//            if newMovie.movieTitle == movie.movieTitle {
//                newMovie.isSeen = !movie.isSeen
//            }
//        }
    }
    
    
}

extension MoviesTableViewController: AddMovieDelegate {
    func movieWasCreated(_ movie: Movie) {
        
        movies.append(movie)
        //Tell the movie to reload the data
        tableView.reloadData()
        dismiss(animated: true, completion: nil)
        
        //When using push Segue, this is the line to be used.
        //navigationController?.popViewController(animated: true)
    }
    
    
}
