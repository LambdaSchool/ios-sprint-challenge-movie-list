//
//  movie.swift
//  Movie List
//
//  Created by David Williams on 2/9/20.
//  Copyright © 2020 Lambda School. All rights reserved.
//

import Foundation

struct Movie: Codable, Equatable{
    
    var name: String
    var year: String
    var seenNotSeen: Bool
    
    init(name: String, year: String, seenNotSeen: Bool = false){
        self.name = name
        self.year = year
        self.seenNotSeen = seenNotSeen
    }
}
