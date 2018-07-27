//
//  Movie.swift
//  Movie List
//
//  Created by Samantha Gatt on 7/27/18.
//  Copyright © 2018 Lambda School. All rights reserved.
//

import Foundation

class Movie {
    var title: String
    var isSeen: Bool
    
    init(title: String, isSeen: Bool) {
        self.title = title
        self.isSeen = isSeen
    }
}
