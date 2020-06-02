//
//  Movie.swift
//  Movie List
//
//  Created by Norlan Tibanear on 5/29/20.
//  Copyright © 2020 Lambda School. All rights reserved.
//

import Foundation

class Movie {
    var title: String
    var seen: Bool
    
    init(title: String, seen: Bool) {
        self.title = title
        self.seen = seen
    }
}
