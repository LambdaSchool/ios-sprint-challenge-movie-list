//
//  Movie.swift
//  Movie List
//
//  Created by Christian Lorenzo on 9/28/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import Foundation

struct Movie: Codable, Equatable {
    var movieTitle: String
    var isSeen: Bool = false
}
