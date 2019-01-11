//
//  Movie.swift
//  Movie List
//
//  Created by Paul Yi on 1/11/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import Foundation

struct Movie {
    let name: String
    var seen: Bool
    
    init(name: String, seen: Bool = false) {
        self.name = name
        self.seen = seen
    }
}
