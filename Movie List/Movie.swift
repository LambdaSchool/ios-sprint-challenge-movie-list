//
//  Movie.swift
//  Movie List
//
//  Created by Farhan on 8/31/18.
//  Copyright © 2018 Lambda School. All rights reserved.
//

import Foundation

class Movie {
    
    let title: String
    var isSeen: Bool = false
    
    init(title: String, isSeen: Bool) {
        self.title = title
        self.isSeen = isSeen
    }
    
}
