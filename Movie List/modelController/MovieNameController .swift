//
//  MovieNameController .swift
//  Movie List
//
//  Created by Iyin Raphael on 7/27/18.
//  Copyright © 2018 Lambda School. All rights reserved.
//

import Foundation

class MovieNameController {
    
    func CreateMovieName(name: String){
        let movieName = MovieName(name: name)
        movieNames.append(movieName)
    }
    
    var movieNames: [MovieName] = []
}
