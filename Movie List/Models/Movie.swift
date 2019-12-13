//
//  Movie.swift
//  Movie List
//
//  Created by Tobi Kuyoro on 13/12/2019.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import Foundation

class Movie {
    var name: String
    var hasBeenSeen: Bool = false
    
    init(name: String, hasBeenSeen: Bool) {
        self.name = name
        self.hasBeenSeen = hasBeenSeen
    }
}
