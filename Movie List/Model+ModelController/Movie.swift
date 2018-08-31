//
//  Movie.swift
//  Movie List
//
//  Created by Jason Modisett on 8/31/18.
//  Copyright © 2018 Lambda School. All rights reserved.
//

import Foundation

class Movie {
    
    let title: String
    var hasSeen: Bool

    init(title: String, hasSeen: Bool = false) {
        self.title = title
        self.hasSeen = hasSeen
    }
}
