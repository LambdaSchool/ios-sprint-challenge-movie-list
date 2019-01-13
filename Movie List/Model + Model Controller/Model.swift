//
//  Model.swift
//  Movie List
//
//  Created by Stuart on 1/11/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import Foundation

class Movie {
    
    let title: String
    var hasSeen: Bool
    
    init(title: String, hasSeen: Bool = true) {
        self.title = title
        self.hasSeen = hasSeen
    }
}
