//
//  Movie.swift
//  Movie List
//
//  Created by J-Skenandore on 9/30/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import Foundation

class Movie {
    let name: String
    var seen: Bool = false
    
    init(name: String) {
        self.name = name
    }
}
