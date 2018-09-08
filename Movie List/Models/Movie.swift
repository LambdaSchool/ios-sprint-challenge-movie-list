//
//  Movie.swift
//  Movie List
//
//  Created by Scott Bennett on 9/7/18.
//  Copyright © 2018 Lambda School. All rights reserved.
//

import Foundation

class Movie {
    let name: String
    var isSeen: Bool

    init(name: String, isSeen: Bool = false) {
        self.name = name
        self.isSeen = isSeen
    }
}

extension Movie: Equatable {
    static func == (lhs: Movie, rhs: Movie) -> Bool {
        return lhs.name == rhs.name && lhs.isSeen == rhs.isSeen
    }
}


//struct Movie: Equatable {
//    let name: String
//    var isSeen: Bool
//}
