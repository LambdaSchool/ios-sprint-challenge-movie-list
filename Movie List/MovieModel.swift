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
	var index:Int

	static func <(lhs:Movie, rhs:Movie) -> Bool
	{
		if lhs.watched || rhs.watched {
			if lhs.watched && rhs.watched {
				return lhs.name < rhs.name
			} else {
				// the lesser here is the one we've seen, right?
				return lhs.watched
			}
		}
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
		var mcopy = movie
		mcopy.index = movies.count
		movies.append(mcopy)
		movies.sort()
	}

	@discardableResult
	func create(_ name: String) -> Movie
	{
		let movie = Movie(name:name, watched:false, index:0)
		add(movie)
		return movie
	}
}
