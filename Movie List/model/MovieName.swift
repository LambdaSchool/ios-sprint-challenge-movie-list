//
//  MovieName.swift
//  Movie List
//
//  Created by Iyin Raphael on 7/27/18.
//  Copyright © 2018 Lambda School. All rights reserved.
//

import Foundation
class MovieName: Equatable {
    var name: String
    var isSeen: Bool = false
    
    init(name: String){
        self.name = name
    }
    
    static func == (lhs: MovieName, rhs: MovieName) -> Bool {
        return lhs.name == rhs.name &&
            lhs.isSeen == rhs.isSeen
    }
    
    
}
