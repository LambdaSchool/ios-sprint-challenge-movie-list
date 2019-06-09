//
//  Movie.swift
//  Movie List
//
//  Created by Lambda_School_Loaner_101 on 6/7/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import Foundation


class Movie {
    var moviesName: String
    var isSeen: Bool
    
    init(moviesName: String, isSeen: Bool = false) {
        self.moviesName = moviesName
        self.isSeen = isSeen
    }
}
