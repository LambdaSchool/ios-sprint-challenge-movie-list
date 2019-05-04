//
//  MovieController.swift
//  Movie List
//
//  Created by Dongwoo Pae on 5/4/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import Foundation

class MovieController {
    var names: [Movie] = []
    
    func addMovieName(name: String, seen: Bool = false) {
        let addMovie = Movie.init(name: name, seen: seen)
        names.append(addMovie)
    }
    
    func toggleSeen(for movie: Movie) {
        movie.seen = !movie.seen
    }
    
    /* still working on it
    func delete (for movie: Movie, indexPath: IndexPath) {
        let selectedRow = names[indexPath.row]
        let index = names.index(of: selectedRow)
        names.remove(at: index)
    }
 
 */
}
