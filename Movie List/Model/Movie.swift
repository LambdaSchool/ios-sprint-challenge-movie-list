//
//  Movies.swift
//  Movie List
//
//  Created by Marlon Raskin on 6/7/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import Foundation

struct Movie: Equatable {
	var movieTitle: String
	var hasSeen: Bool
	
	init(movieTitle: String, hasSeen: Bool = false) {
		self.movieTitle = movieTitle
		self.hasSeen = hasSeen
	}
}
