//
//  MovieListTableViewController.swift
//  Movie List
//
//  Created by Waseem Idelbi on 12/4/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import UIKit

class MovieListTableViewController: UITableViewController, SeenButtonDelegate {
    
    func movieWasSeen(cell: MovieTableViewCell) {
        guard let indexPath = tableView.indexPath(for: cell) else {return}
        var movie = movies[indexPath.row]
        movie.seen = !movie.seen
    }
    

     var movies: [Movie] = [Movie(title: "spiderman")]
        
       override func numberOfSections(in tableView: UITableView) -> Int {
              return 1
           }
        override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
           return movies.count
        }
        
        override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
            let cell = tableView.dequeueReusableCell(withIdentifier: "MovieCell", for: indexPath) as! MovieTableViewCell
            let movie = movies[indexPath.row]

            cell.movieTitleLabel.text = movie.title
            if movie.seen {
                cell.seenButton.titleLabel?.text = "Seen"
            } else {
                cell.seenButton.titleLabel?.text = "Not Seen"
            }
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

extension MovieListTableViewController: AddMovieDelegate {
    func movieWasAdded(movie: Movie) {
        movies.append(movie)
        dismiss(animated: true, completion: nil)
        tableView.reloadData()
    }
}
