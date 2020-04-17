//
//  Movie.swift
//  Movie List
//
//  Created by Enzo Jimenez-Soto on 4/17/20.
//  Copyright © 2020 Lambda School. All rights reserved.
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
