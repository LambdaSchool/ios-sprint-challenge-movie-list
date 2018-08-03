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
    
    //function to detemine when seen button is touched
    func toggleIsSeen(name: MovieName){
        if name.isSeen == false{
         name.isSeen = true
        } else {
            name.isSeen = false
        }
    }
    
    var movieNames: [MovieName] = []
    
    func delete(movie: MovieName) {
        guard let index = movieNames.index(of: movie) else {return}
        movieNames.remove(at: index)
    }
}
