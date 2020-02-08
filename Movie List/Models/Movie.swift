//
//  Movie.swift
//  MovieList
//

import Foundation

import UIKit

class Movie {
    let movieName: String
    var seen: Bool
    
    init (movieName: String, seen: Bool = false) {
        self.movieName = movieName
        self.seen = seen
    }
    func toggleSeen() {
        self.seen = !self.seen
    }
}
