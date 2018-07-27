//
//  Movie.swift
//  Movie List
//
//  Created by Carolyn Lea on 7/27/18.
//  Copyright © 2018 Lambda School. All rights reserved.
//

import Foundation

class Movie {
    
    var movieName: String
    var hasSeen: Bool
    
    init(movieName: String, hasSeen: Bool = false) {
        
        self.movieName = movieName
        self.hasSeen = hasSeen
    }
}
