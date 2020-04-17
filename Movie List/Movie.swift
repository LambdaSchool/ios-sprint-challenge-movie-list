//
//  Movie.swift
//  Movie List
//
//  Created by Jason on 4/17/20.
//  Copyright © 2020 Lambda School. All rights reserved.
//

import Foundation

class Movie {
    var name: String
    var seen: Bool = false
    var notSeen: Bool = false
    
    init(name: String, seen: Bool, notSeen: Bool) {
        self.name = name
        self.seen = seen
        self.notSeen = notSeen
    }
}
