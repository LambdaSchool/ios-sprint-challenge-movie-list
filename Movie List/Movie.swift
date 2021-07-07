//
//  File.swift
//  Movie List
//
//  Created by Dongwoo Pae on 5/4/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import Foundation

class Movie {
    var name: String
    var seen: Bool
    
    init(name:String, seen:Bool = false) {
        self.name = name
        self.seen = seen
    }
}
