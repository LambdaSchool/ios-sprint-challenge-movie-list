//
//  Movie.swift
//  Movie List
//
//  Created by Vincent Hoang on 4/17/20.
//  Copyright © 2020 Lambda School. All rights reserved.
//

import Foundation

class Movie {
    var name: String
    var hasSeen: Bool
    
    init(_ name: String, _ hasSeen: Bool = false) {
        self.name = name
        self.hasSeen = hasSeen
    }
}
