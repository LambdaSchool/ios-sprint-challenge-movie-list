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
	
	var movies: [Movie] = []
//	{
//		get {
//			return defaults.object(forKey: "movies") as? [Movie] ?? [Movie]()
//		}
//
//		set {
//			defaults.setValue(newValue, forKey: "movies")
//		}
//	}
	
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
