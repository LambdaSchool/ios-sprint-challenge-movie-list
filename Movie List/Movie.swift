//
//  Movie.swift
//  Movie List
//
//  Created by Nikita Thomas on 10/5/18.
//  Copyright © 2018 Lambda School. All rights reserved.
//

import UIKit

struct Movie {
    let name: String
    var seen: Bool
    
    init(name: String, seen: Bool = false) {
        self.name = name
        self.seen = seen
    }
}


