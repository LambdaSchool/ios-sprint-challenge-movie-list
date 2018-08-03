//
//  MovieName.swift
//  Movie List
//
//  Created by Iyin Raphael on 7/27/18.
//  Copyright © 2018 Lambda School. All rights reserved.
//

import Foundation

class MovieName {
    let name: String
    var isSeen: Bool
    
    init(name: String, isSeen: Bool = false){
        self.name = name
        self.isSeen = isSeen
    }
}
