//
//  MovieController.swift
//  Movie List
//
//  Created by Lambda_School_Loaner_101 on 6/7/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import Foundation

class MovieController {
    
   var movies: [Movie] = []

    func createMovies(moviesName: String) {
        let newMovies = Movie(moviesName: moviesName)
        movies.append(newMovies)

    }

//    func deleteMovies() {
//        movies.remove(at: <#T##Int#>)
//    }

}
