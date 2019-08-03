//
//  Movie.swift
//  Movie List
//
//  Created by Joel Groomer on 8/3/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import Foundation

struct Movie: Equatable {
    var title: String
    var seen: Bool = false
}

protocol MovieDelegate {
    func addMovie(_ movie: Movie)
    func delMovie(_ movie: Movie)
    func toggleSeen(_ movie: Movie) -> Movie?
}
