//
//  Movie.swift
//  Movie List
//
//  Created by Michael Flowers on 1/11/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import Foundation

class Movie {
    var title: String
    init(title: String) {
        self.title = title
    }
}

extension Movie: Equatable {
    static func == (lhs: Movie, rhs: Movie) -> Bool {
        return lhs.title == rhs.title
    }
    
    
}
