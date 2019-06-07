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
    func loadEnteredMovies(for movie: Movie) {
        guard let unwrappedUserMovie = userMovie else { return }
        favoriteMoviesArray.append(unwrappedUserMovie)
    }
    func toggleSeenUnseen(for movie: Movie) {
        movie.hasSeen.toggle()
    }
}
