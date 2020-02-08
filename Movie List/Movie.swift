//
//  Movie.swift
//  Movie List
//
//  Created by conner on 2/7/20.
//  Copyright © 2020 conner. All rights reserved.
//

import Foundation

struct Movie {
    var title: String
    var seen: Bool = false
}

protocol AddMovieDelegate{
    func movieAdded(movie: Movie)
}
