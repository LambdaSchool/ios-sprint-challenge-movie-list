//
//  Movie.swift
//  Movie List
//
//  Created by Samantha Gatt on 7/27/18.
//  Copyright © 2018 Lambda School. All rights reserved.
//

import Foundation

// Made this a struct so it could be equatable and I could get movies.index(of: Movie) in model controller for delete function
struct Movie: Equatable {
    var title: String
    var isSeen: Bool
}
