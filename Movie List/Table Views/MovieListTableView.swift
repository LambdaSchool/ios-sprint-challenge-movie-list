//
//  MovieList.swift
//  Movie List
//
//  Created by Waseem Idelbi on 12/4/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import UIKit

class MovieListTableView: UITableView, UITableViewDataSource, UITableViewDelegate {

    

    var movies: [Movie] = [Movie(title: "spiderman")]
    
    func numberOfSections(in tableView: UITableView) -> Int {
          return 1
       }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
       return movies.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = dequeueReusableCell(withIdentifier: "MovieCell", for: indexPath) as! MovieTableViewCell
        let movie = movies[indexPath.row]
        cell.movie = movie
//        movieCell.movieTitleLabel.text = movie.title
//        if movie.seen {
//            movieCell.seenButtonTapped.titleLabel?.text = "Seen"
//        } else {
//            movieCell.seenButtonTapped.titleLabel?.text = "Not Seen"
//        }
        return cell
    }
    
}

extension MovieListTableView: AddMovieDelegate {
    func movieWasAdded(movie: Movie) {
        movies.append(movie)
    }
    
    
}
