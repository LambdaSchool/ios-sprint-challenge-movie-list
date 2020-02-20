//
//  MovieController.swift
//  Movie List
//
//  Created by Lambda_School_Loaner_241 on 2/9/20.
//  Copyright © 2020 Lambda School. All rights reserved.
//

import Foundation
class MovieController {
    var moviesArray: [Movie] = []
    
    func createMovie(_ movieName: String) {
        let movie = Movie(name: movieName)
        moviesArray.append(movie)
        
        
    }
    
    func updateMovie(_ movie: Movie) {
        guard let index = moviesArray.firstIndex(of: movie) else { return }
        
        moviesArray[index].seenOrNotSeen = !movie.seenOrNotSeen
        
        
        
    }
    
    func deleteMovie(_ movie: Movie) {
        guard let index = moviesArray.firstIndex(of: movie) else { return }
        moviesArray.remove(at: index)
        
        
    }
    
 
}
