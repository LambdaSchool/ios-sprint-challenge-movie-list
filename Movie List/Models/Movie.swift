//
//  Movie.swift
//  Movie List
//
//  Created by Conner on 7/27/18.
//  Copyright © 2018 Lambda School. All rights reserved.
//

import Foundation

class Movie: Equatable {
    static func == (lhs: Movie, rhs: Movie) -> Bool{
        return lhs.movieName == rhs.movieName
    }
    var movieName: String
    var isSeen: String
    
    init(movieName: String, isSeen: String) {
        self.movieName = movieName
        self.isSeen = isSeen
    }
}
