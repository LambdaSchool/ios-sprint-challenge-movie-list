//
//  Movie.swift
//  Movie List
//
//  Created by Jorge Alvarez on 12/13/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import Foundation

class Movie {
    var name: String
    var seen: Bool = false
    
    init(name: String, seen: Bool = false) {
        self.name = name
        self.seen = seen
    }

}
