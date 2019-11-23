//
//  Movie.swift
//  Movie List
//
//  Created by Osha Washington on 11/22/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import Foundation


struct Movie {
    var movieName: String
    var seen: Bool = false
    
    init(movieName: String, seen: Bool) {
    self.movieName = movieName
    self.seen = seen
}
    }
