//
//  MovieController.swift
//  Movie List
//
//  Created by Marlon Raskin on 6/7/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import Foundation

class MovieController {
	var movies: [Movie] = []
	
	func addMovie(movieTitle: String) {
		let movie = Movie(movieTitle: movieTitle)
		movies.append(movie)
	}
	
	func toggleHasSeen(for movie: Movie) {
		guard let index = movies.firstIndex(of: movie) else { return }
		if movies[index].hasSeen {
			movies[index].hasSeen = false
		} else if movies[index].hasSeen == false {
			movies[index].hasSeen = true
		}
	}
}
