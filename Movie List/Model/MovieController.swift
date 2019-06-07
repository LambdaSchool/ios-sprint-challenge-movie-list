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
	
	func addMovie(title: String) {
		let movie = Movie(movieTitle: title)
		movies.append(movie)
	}
}
