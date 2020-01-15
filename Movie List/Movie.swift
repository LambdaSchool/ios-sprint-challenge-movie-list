//
//  Movie.swift
//  Movie List
//
//  Created by Kennon Keys Ward on 6/7/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import Foundation

class Movie {
    let name: String
    var seen: Bool
    
    init(name: String, seen: Bool = false) {
        self.name = name
        self.seen = seen
        
    }
    
}
