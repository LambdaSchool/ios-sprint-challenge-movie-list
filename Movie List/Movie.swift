//
//  Movie.swift
//  Movie List
//
//  Created by Thomas Cacciatore on 4/26/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import Foundation

struct Movie: Equatable {
    
    let name: String
    
    init(name: String) {
        self.name = name
    }
}
