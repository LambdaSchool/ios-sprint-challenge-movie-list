//
//  Movie.swift
//  Movie List
//
//  Created by Jordan Christensen on 8/16/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import Foundation

class Movie {
    var name: String
    var hasSeen: Bool
    
    init(name: String) {
        self.name = name
        hasSeen = false
    }
}
