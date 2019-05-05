//
//  MoiveController.swift
//  Movie List
//
//  Created by patelpra on 5/4/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import Foundation

class MovieController {
    
    // Other classes can now get use the movie array.
    private(set) var movies: [Movie] = []
    
    // So we need to create the movie func part of MBS
    func createMovie(with name: String) {
        // creating a new movie object with its instance
        let movie = Movie(name: name)
        // now we are going to append movie to the empty array
        movies.append(movie)
    }
    
    func updateMovie(with movie: Movie, name: String) {
        // trying to find the index value....does this movie exist in array so we can safely update
        guard let index = movies.firstIndex(of: movie) else { return }
        movies[index].name = name
    }
    
    func removeMovie(with movie: Movie) {
        guard let index = movies.firstIndex(of: movie) else { return }
        movies.remove(at: index)
    }
    
    // Need the toggle to allow the view to switch between isSeen and !isSeen
    func toggledSeen(at indexPath: IndexPath) {
        self.movies[indexPath.row].isSeen = !self.movies[indexPath.row].isSeen
    }
}
