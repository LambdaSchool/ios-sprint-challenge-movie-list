//
//  Movie.swift
//  Movie List
//
//  Created by Nathan Hedgeman on 5/4/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import Foundation

class Movie {
    var title: String
    var isSeen: Bool = false
    
    init(title: String, isSeen: Bool) {
        self.title = title
        self.isSeen = isSeen
    }
}
