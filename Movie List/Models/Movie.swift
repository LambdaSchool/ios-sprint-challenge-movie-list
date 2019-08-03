//
//  Movie.swift
//  Movie List
//
//  Created by Joel Groomer on 8/3/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import Foundation

struct Movie {
    var title: String
    var seen: Bool = false
}

protocol MovieDelegate {
    func addMovie(movie _: Movie)
    func delMovie(movie _: Movie)
}
