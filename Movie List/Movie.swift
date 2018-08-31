//
//  Movie.swift
//  Movie List
//
//  Created by Farhan on 8/31/18.
//  Copyright © 2018 Lambda School. All rights reserved.
//

import Foundation

class Movie: Equatable {
    
    static func == (lhs: Movie, rhs: Movie) -> Bool {
        if (lhs.title == rhs.title && lhs.isSeen == rhs.isSeen) {
            return true
        } else {
            return false
        }
    }
    
    
    let title: String
    var isSeen: Bool = false
    
    init(title: String, isSeen: Bool) {
        self.title = title
        self.isSeen = isSeen
    }
    
}
