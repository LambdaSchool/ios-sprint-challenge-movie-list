//
//  Movie.swift
//  Movie List
//
//  Created by James Sedlacek on 5/29/20.
//  Copyright © 2020 Lambda School. All rights reserved.
//

import Foundation


class Movie {
    let name: String
    var seen: Bool
    
    init(name: String, seen: Bool = false) {
        self.name = name
        self.seen = seen
    }
}
