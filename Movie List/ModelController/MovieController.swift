//
//  MovieController.swift
//  Movies
//
//  Created by Simon Elhoej Steinmejer on 27/07/18.
//  Copyright © 2018 Simon Elhoej Steinmejer. All rights reserved.
//

import Foundation

class MovieController
{
    private(set) var movies = [Movie]()
    
    func addMovie(withName name: String)
    {
        let movie = Movie(name: name, didWatch: false)
        movies.append(movie)
        
        if movies.count > 1
        {
            movies = movies.sorted(by: { $0.name.lowercased() < $1.name.lowercased() })
        }
    }
    
    func updateDidWatch(onMovie movie: Movie)
    {
        if let index = movies.index(of: movie)
        {
            movies[index].didWatch = movie.didWatch ? false : true
        }
    }
    
    func deleteMovie(at index: Int)
    {
        movies.remove(at: index)
    }
    
}







