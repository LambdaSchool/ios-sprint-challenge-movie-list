//
//  Movie.swift
//  Movie List
//
//  Created by Jonathan T. Miles on 7/27/18.
//  Copyright © 2018 Lambda School. All rights reserved.
//

import Foundation

class Movie: Equatable {
    var title: String
    var isSeen: Bool
    
    init (title: String, isSeen: Bool = false) {
        self.title = title
        self.isSeen = isSeen
    }
    
    static func == (lhs: Movie, rhs: Movie) -> Bool {
        return
            lhs.title == rhs.title &&
            lhs.isSeen == lhs.isSeen
    }
}
