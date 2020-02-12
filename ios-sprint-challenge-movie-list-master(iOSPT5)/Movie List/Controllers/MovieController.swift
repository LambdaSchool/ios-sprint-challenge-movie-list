//
//  MovieController.swift
//  Movie List
//
//  Created by David Williams on 2/11/20.
//  Copyright © 2020 Lambda School. All rights reserved.
//

import Foundation

class MovieController {
    
private(set) var movies: [Movie] = []
    
    func toggleHasBeenSeen(cell: Movie) {
        guard let index = movies.firstIndex(of: cell) else { return }
        movies[index].seenNotSeen.toggle()
    }
}
