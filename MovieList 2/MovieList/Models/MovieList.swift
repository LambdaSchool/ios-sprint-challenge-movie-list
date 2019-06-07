//
//  MovieList.swift
//  MovieList
//
//  Created by Jordan Davis on 5/3/19.
//  Copyright © 2019 Jordan Davis. All rights reserved.
//

import Foundation

struct Movie: Equatable {
    
    var title: String
    var isSeen: Bool
    
    init(title:String, isSeen: Bool = false) {
        self.title = title
        self.isSeen = isSeen
    }
}
