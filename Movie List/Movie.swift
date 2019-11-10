//
//  Movie.swift
//  Movie List
//
//  Created by Lambda_School_Loaner_220 on 11/8/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import Foundation

struct Movie: Equatable
{
    var movieTitle: String
    var hasSeen: Bool
    
    init(movieTitle: String, hasSeen: Bool = false) {
        self.movieTitle = movieTitle
        self.hasSeen = hasSeen
    }
}
