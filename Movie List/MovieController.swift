//
//  MovieController.swift
//  Movie List
//
//  Created by Zack Larsen on 11/8/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import Foundation


class MovieController {
    
    var movies: [Movie] = []
    
    
//    add movie function
    func addMovie (movie: Movie) {
        movies.append(movie)
    }
    
//    function to handle the logic of changing the hasWatched boolean
    
    func toggleHasSeen(seenButton: Movie) {
        guard let movieIndex = movies.firstIndex(of: seenButton) else { return }
        movies[movieIndex].seen.toggle()
    }
}
