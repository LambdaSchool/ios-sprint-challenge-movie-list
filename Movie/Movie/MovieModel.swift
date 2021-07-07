//
//  MovieModel.swift
//  Movie
//
//  Created by Diante Lewis-Jolley on 4/26/19.
//  Copyright © 2019 Diante Lewis-Jolley. All rights reserved.
//

import Foundation

struct Movie: Equatable {

    var movie: String
    var wasSeen: Bool

    init(movie: String, wasSeen: Bool = false) {
        self.movie = movie
        self.wasSeen = wasSeen

    }
}
