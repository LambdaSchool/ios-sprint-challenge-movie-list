//
//  Movie.swift
//  Movie List
//
//  Created by Jordy on 9/7/18.
//  Copyright © 2018 Lambda School. All rights reserved.
//

import Foundation

struct Movie {
    
    let name: String
    let hasBeenSeen: Bool
    init(name: String) {
        
        self.name = name
        self.hasBeenSeen = false
    }
}
