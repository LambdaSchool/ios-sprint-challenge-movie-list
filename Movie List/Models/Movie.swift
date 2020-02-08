//
//  Movie.swift
//  Movie List
//
//  Created by Jon Bash on 2019-10-11.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import Foundation

class Movie: Codable {
    var title: String
    var seen: Bool
    
    init(title: String, seen: Bool) {
        self.title = title
        self.seen = seen
    }
}
