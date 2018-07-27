//
//  MovieModel.swift
//  Movie List
//
//  Created by William Bundy on 7/27/18.
//  Copyright © 2018 Lambda School. All rights reserved.
//

import Foundation

struct Movie:Comparable
{
	var name:String
	var watched:Bool

	static func <(lhs:Movie, rhs:Movie) -> Bool
	{
		return lhs.name < rhs.name
	}
}

protocol MovieConsumer
{
	var movieController:MovieController! {get set}
}

class MovieController
{
	var movies:[Movie] = []

	func add(_ movie:Movie)
	{
		movies.append(movie)
		movies.sort()
	}

	@discardableResult
	func create(_ name: String) -> Movie
	{
		let movie = Movie(name:name, watched:false)
		add(movie)
		return movie
	}

	func delete(index: Int)
	{
		// my gut tells me this should be much better than calling remove
		movies[index] = movies[movies.count - 1]
		movies.removeLast()
		movies.sort()
	}
}
