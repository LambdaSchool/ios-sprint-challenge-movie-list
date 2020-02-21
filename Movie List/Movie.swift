//
//  Movie.swift
//  Movie List
//
//  Created by Nichole Davidson on 2/21/20.
//  Copyright © 2020 Lambda School. All rights reserved.
//

import Foundation

class Movie {
    var name: String
    var seen: Bool = false
    
    init(name: String) {
        self.name = name
    }
}
