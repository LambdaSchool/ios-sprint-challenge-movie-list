//
//  Movie.swift
//  Movie List
//
//  Created by Casualty on 8/4/19.
//  Copyright © 2019 Thomas Dye. All rights reserved.
//

import Foundation

struct Movie: Equatable {
    var title: String
    var seen: Bool = true
}

protocol AddMovieDelegate {
    func addMovie(_ movie: Movie)
    func toggleButtonSeenNotSeen(_ movie: Movie) -> Movie?
    func deleteMovie(_ movie: Movie)
}
