//
//  Movie.swift
//  Movie List
//
//  Created by Paul Yi on 1/11/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import Foundation

struct Movie: Equatable {
    let title: String
    var seen: Bool
    
    init(title: String, seen: Bool = false) {
        self.title = title
        self.seen = seen
    }
}
