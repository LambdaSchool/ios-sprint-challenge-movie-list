//
//  movieslist.swift
//  Movie List
//
//  Created by Mike Nichols on 5/15/20.
//  Copyright © 2020 Lambda School. All rights reserved.
//

import Foundation

struct Movie {
    var title: String
    var haveSeen: Bool = false
}

var moviesList: [Movie] = [Movie(title: "Star Wars", haveSeen: true),Movie(title: "Eat Pray Love"),Movie(title: "The Shawshank Redemption", haveSeen: true)]

