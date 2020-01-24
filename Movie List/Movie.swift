//
//  Movie.swift
//  Movie List
//
//  Created by scott harris on 1/24/20.
//  Copyright © 2020 Lambda School. All rights reserved.
//

import Foundation

enum Seen {
    case seen
    case notSeen
    
}

struct Movie {
    var name: String
    var wasSeen: Bool = false
}
