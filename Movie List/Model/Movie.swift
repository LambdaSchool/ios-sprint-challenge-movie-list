//
//  Movie.swift
//  Movie List
//
//  Created by Joshua Sharp on 8/16/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import Foundation

protocol MovieDelegate {
    func addMovie (_ movie:Movie)
    func updateMovie (_ movie:Movie)
}

class Movie  {
    let name:String
    var seen:Bool = false
    
    init (_ name:String, _ seen:Bool = false) {
        self.name = name
        self.seen = seen
    }
}
