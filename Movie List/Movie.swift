//
//  Movie.swift
//  Movie List
//
//  Created by Ilgar Ilyasov on 9/2/18.
//  Copyright © 2018 Lambda School. All rights reserved.
//

import Foundation

struct Movie {
    
    var movieTitle: String
    var hasSeen: Bool
    
    init(movieTitle: String, hasSeen: Bool = false) {
        self.movieTitle = movieTitle
        self.hasSeen = hasSeen
    }
}
