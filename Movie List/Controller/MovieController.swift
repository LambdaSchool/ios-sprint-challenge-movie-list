//
//  MovieController.swift
//  Movie List
//
//  Created by Jake Connerly on 6/7/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import Foundation
import UIKit

class MovieController {
    var favoriteMoviesArray: [Movie] = []
    var userMovie: Movie?
    //
    //MARK: - Methods
    //
    func loadEnteredMovie(movie: Movie) {
        let unwrappedUserMovie = movie
        favoriteMoviesArray.append(unwrappedUserMovie)
        
    }
    func toggleSeenUnseen(for movie: Movie) {
        movie.hasSeen.toggle()
    }
    func deleteMovie(at position: Int) {
        favoriteMoviesArray.remove(at: position)
    }
 
}
