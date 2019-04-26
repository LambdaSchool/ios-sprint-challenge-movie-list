//
//  MovieController.swift
//  Movie List
//
//  Created by Michael Redig on 4/26/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import Foundation

class MovieController {
	let defaults = UserDefaults.standard
	
	var movies: [Movie] {
		didSet {
			updateDefaults()
		}
	}
	
	init() {
		let tempMovies = defaults.object(forKey: "movies") as? [String] ?? [String]()
		movies = tempMovies.map{ Movie(movieName: $0) }
	}
	
	func updateDefaults() {
		let movieNames: [String] = movies.map{ $0.movieName }
		defaults.setValue(movieNames, forKey: "movies")
	}
	
	func addNewMovie(named name: String) {
		movies.append(Movie(movieName: name))
	}
	
	func deleteMovie(movie: Movie) {
		guard let movieIndex = movies.firstIndex(of: movie) else { return }
		movies.remove(at: movieIndex)
	}
	
	func moveMovie(movie: Movie, toIndex index: Int) {
		guard let movieIndex = movies.firstIndex(of: movie) else { return }
		let movie = movies.remove(at: movieIndex)
		movies.insert(movie, at: index)
	}
}


protocol MovieControllerProtocol: AnyObject {
	var movieController: MovieController? { get set }
}
