//
//  MovieController.swift
//  Movie List
//
//  Created by Rick Wolter on 9/7/18.
//  Copyright © 2018 Lambda School. All rights reserved.
//

import Foundation


class MovieController {
    
var movies: [Movie] = []
    
func createMovie( movieName: String, hasSeen: Bool = false) {
    let movie = Movie(movieName: movieName, hasSeen: hasSeen)
    movies.append(movie)
}

func toggleSeen( movie: Movie) {
     movie.hasSeen = !movie.hasSeen
   // Pass by reference ***** remember next time *** struct created proclem because it's a copy
}

func deleteMovie(at index: Int) {
    movies.remove(at: index)
}


}
