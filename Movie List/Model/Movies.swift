//
//  Movies.swift
//  Movie List
//
//  Created by Sammy Alvarado on 4/17/20.
//  Copyright © 2020 Lambda School. All rights reserved.
//

import Foundation

struct Movie: Equatable {
    var movieName: String
    var seenOrNot: Bool
    
    init(movieName: String, seenOrNot: Bool = false) { // We init the varables to be able be pass it through my movie Table cell
        self.movieName = movieName
        self.seenOrNot = seenOrNot
    }
}
