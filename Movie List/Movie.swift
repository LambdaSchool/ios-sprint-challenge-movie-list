//
//  Movie.swift
//  Movie List
//
//  Created by Hunter Oppel on 3/20/20.
//  Copyright © 2020 Lambda School. All rights reserved.
//

import Foundation

struct Movie {
    let name: String
    var seen: Bool = false
}

extension Movie: CustomStringConvertible {
    var description: String {
        switch seen {
        case true:
            return "Seen"
        case false:
            return "Not Seen"
        }
    }
}
