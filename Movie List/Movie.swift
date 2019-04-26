//
//  Movie.swift
//  Movie List
//
//  Created by Michael Redig on 4/26/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import Foundation

struct Movie: Codable, Equatable {
	let movieName: String
	var watched = false
	
	init(movieName: String) {
		self.movieName = movieName
	}
}
