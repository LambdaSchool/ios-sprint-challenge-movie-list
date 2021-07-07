//
//  Movie.swift
//  Movie List
//
//  Created by Thomas Cacciatore on 4/26/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import Foundation

struct Movie: Equatable {
    
    var name: String
    var hasSeen: Bool
    
    init(name: String, hasSeen: Bool = false) {
        self.name = name
        self.hasSeen = hasSeen
    }
}
