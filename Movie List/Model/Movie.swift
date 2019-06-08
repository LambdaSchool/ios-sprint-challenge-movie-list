//
//  Movie.swift
//  Movie List
//
//  Created by Kat Milton on 6/7/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import Foundation

/*
 The project calls for a Movie model object.
 It should contain properties for the movie's name and whether or not it has been seen.

 */

struct Movie: Equatable {
    var name: String
    var seen: Bool
    
    init(name: String, seen: Bool = false) {
        self.name = name
        self.seen = seen
    }
    
    
}
