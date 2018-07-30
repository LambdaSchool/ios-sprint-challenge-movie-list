//
//  Movie.swift
//  Movie List
//
//  Created by Carolyn Lea on 7/27/18.
//  Copyright © 2018 Lambda School. All rights reserved.
//

import Foundation

class Movie: Equatable {
    
    static func == (lhs: Movie, rhs: Movie) -> Bool {
        return lhs.movieName == rhs.movieName
    }
    
    var movieName: String
    var hasSeen: Bool
    
    init(movieName: String, hasSeen: Bool = false) {
        self.movieName = movieName
        self.hasSeen = hasSeen
    }
    
}
