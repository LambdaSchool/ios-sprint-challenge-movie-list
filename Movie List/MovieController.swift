//
//  MovieController.swift
//  Movie List
//
//  Created by Dillon McElhinney on 8/31/18.
//  Copyright © 2018 Lambda School. All rights reserved.
//

import Foundation

class MovieController {

    private(set) var movies: [Movie] = [Movie(title: "The Dark Knight"), Movie(title: "The Last Jedi"), Movie(title: "Avengers")]
    
    //Create new movie from title and add to array
    func createMovie(title: String) {
        let movie = Movie(title: title)
        
        movies.append(movie)
    }
    
    //Toggle is seen property on movie
    func toggleIsSeen(on movie: Movie) {
        guard let index = movies.index(of: movie) else { return }
        
        movies[index].isSeen = !movies[index].isSeen
    }
    
    //Delete movie from array
    func deleteMovie(_ movie: Movie) {
        guard let index = movies.index(of: movie) else { return }
        
        movies.remove(at: index)
    }
    
}
