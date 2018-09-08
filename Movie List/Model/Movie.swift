//
//  Movie.swift
//  Movie List
//
//  Created by Rick Wolter on 9/7/18.
//  Copyright © 2018 Lambda School. All rights reserved.
//

import Foundation


class Movie {
    
    let movieName: String
    var hasSeen: Bool
    
    init(movieName: String, hasSeen: Bool = false) {
        self.movieName = movieName
        self.hasSeen = hasSeen
        
    }
    
    
    
}
