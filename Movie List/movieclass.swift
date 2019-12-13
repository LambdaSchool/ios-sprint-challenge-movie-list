//
//  File.swift
//  Movie List
//
//  Created by Stephanie Ballard on 12/13/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import Foundation

class Movie {
    var name: String
    var isSeen: Bool
    
    init(name: String, isSeen: Bool = false) {
        self.name = name
        self.isSeen = isSeen
    }
}
