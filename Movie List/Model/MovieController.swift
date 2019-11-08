//
//  MovieController.swift
//  Movie List
//
//  Created by Chad Rutherford on 11/8/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import Foundation

class MovieController {
    var movies: [Movie] = [
    Movie(name: "Back to the Future"),
    Movie(name: "The Matrix"),
    Movie(name: "Beauty and the Beast"),
    Movie(name: "Toy Story 4"),
    Movie(name: "Avengers: Endgame")]
    
    func toggleSeen(_ movie: Movie) {
        guard let index = movies.firstIndex(of: movie) else { return }
        movies[index].isSeen.toggle()
    }
}
