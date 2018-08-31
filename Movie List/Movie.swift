//
//  Movie.swift
//  Movie List
//
//  Created by Moin Uddin on 8/31/18.
//  Copyright © 2018 Lambda School. All rights reserved.
//

import Foundation

class Movie {
    var title: String
    var seen: Bool
    
    init(title: String, seen: Bool = false) {
        self.title = title
        self.seen = seen
    }
}
