//
//  Movies.swift
//  Movie List
//
//  Created by Gladymir Philippe on 5/31/20.
//  Copyright © 2020 Lambda School. All rights reserved.
//

import Foundation

class Movie {
    let name: String
    var seen: Bool = false
    
    init(name: String) {
        self.name = name
    }
}
