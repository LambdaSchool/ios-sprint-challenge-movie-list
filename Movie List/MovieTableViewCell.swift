//
//  MovieTableViewCell.swift
//  Movie List
//
//  Created by Alex Shillingford on 6/7/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import UIKit


class MovieTableViewCell: UITableViewCell {
    
    @IBOutlet weak var movieLabel: UILabel!
    @IBOutlet weak var seenButton: UIButton!
    var movieController = MovieController()
//     In the TableViewController, in the cellForRowAt method, there is a guard let called "cell" that is being casted as this file "MovieTableViewCell. Underneath that guard let is a constant called "movie = movieController.movies[indexPath.row]" which is essentially an element being used to access the correct movie out of the array of movies to display onto each cell via passing in the indexPath.row (which is an Int) value. Underneath that is a line that says cell.movie = movie. Poor variable naming, but what that is saying is cell, casted as the file MovieTableViewCell, cell.movie, so the movie variable below, should equal or be assigned the movie object out of the array of movies kept in the MovieController.
    var movie: Movie?
    
    @IBAction func notSeenButtonTapped(_ sender: Any) {
        guard let unwrappedMovie = movie else { return }
        movie?.hasSeen.toggle()
        seenButton.setTitle(unwrappedMovie.hasSeen ? "Not Seen" : "Seen", for: .normal)
        
        for index in 0..<movieController.movies.count {
            if unwrappedMovie.title == movieController.movies[index].title {
                movieController.movies[index].hasSeen = !movieController.movies[index].hasSeen
            }
        }
    }
    
}
    
    

