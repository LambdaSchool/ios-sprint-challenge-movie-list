//
//  MovieNameController .swift
//  Movie List
//
//  Created by Iyin Raphael on 7/27/18.
//  Copyright © 2018 Lambda School. All rights reserved.
//

import Foundation

class MovieNameController {
    
    func createMove(name: String){
        let movie = MovieName(name: name)
        movieNames.append(movie)
    }
    
    var movieNames: [MovieName] = []
    
    func delete(movie: MovieName) {
        guard let index = movieNames.index(of: movie) else {return}
        movieNames.remove(at: index)
    }
}
