//
//  Movie.swift
//  Movie List
//
//  Created by Chris Price on 5/3/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import Foundation

struct Movie {
    
    let movieTitle: String
    var wasSeen: Bool
    
    init(movieTitle: String, wasSeen: Bool = false) {
        self.movieTitle = movieTitle
        self.wasSeen = wasSeen
    }
    
}
