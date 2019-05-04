//
//  MovieController.swift
//  Movie List
//
//  Created by Steven Leyva on 4/26/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import Foundation

class MovieController {
    
    var movies: [Movie] = []
    
    init() {
        
        createMovie(with: "Jurrassic Park")
    }
    
    func createMovie(with text: String) {
        let movie = Movie(text: text)
        
        movies.append(movie)
    }
   
    func deleteMovie(movie: Movie) {
        guard let index = movies.firstIndex(of: movie) else { return }
        movies.remove(at: index)
}


}





