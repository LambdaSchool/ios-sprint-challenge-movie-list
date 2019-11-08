//
//  Movie.swift
//  Movie List
//
//  Created by Zack Larsen on 11/8/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import Foundation


struct Movie: Equatable {
    var name: String
    var seen: Bool
    
    init(name: String, seen: Bool = false) {
    self.name = name
    self.seen = seen
    
    }
}
