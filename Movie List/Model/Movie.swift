//
//  Movie.swift
//  Movie List
//
//  Created by Linh Bouniol on 7/27/18.
//  Copyright © 2018 Lambda School. All rights reserved.
//

import Foundation

class Movie: Equatable {
    var name: String
    var isSeen: Bool = false
    
    init(name: String, isSeen: Bool) {
        self.name = name
        self.isSeen = isSeen
    }
    
    static func == (lhs: Movie, rhs: Movie) -> Bool {
        return lhs.name == rhs.name && lhs.isSeen == rhs.isSeen
    }
}
