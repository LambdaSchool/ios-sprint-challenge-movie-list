//
//  File.swift
//  Movie List
//
//  Created by Taylor Lyles on 4/26/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import Foundation

struct Movies: Equatable {
    let movieTitle: String
    var isSeen: Bool
    
    init(movieTitle: String, isSeen: Bool = true) {
        self.movieTitle = movieTitle
        self.isSeen = isSeen
    }
}
