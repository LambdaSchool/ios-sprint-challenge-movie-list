//
//  Movie.swift
//  Movie List
//
//  Created by Jordan Christensen on 8/16/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import Foundation

class Movie: Codable {
    var name: String
    var hasSeen: Bool = false
    
    init(name: String, hasSeen: Bool) {
        self.name = name
    }
}
