//
//  FileOps.swift
//  Movie List
//
//  Created by Kenny on 12/13/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import Foundation
//Save and Load Movies
class FileOps {
    //private class properties
    static private let userdefaults = UserDefaults()
    static private let movieString = "Movies"
    
    static func moviesFromStringArray(movieNames: [String]) -> [Movie] {
        var movies = [Movie]()
        for movieName in movieNames {
            let movie = Movie(name: movieName)
            movies.append(movie)
        }
        return movies
    }
    
    static func stringNamesFromMovieArray(movies: [Movie]?) -> [String] {
        guard let movies = movies else {return [""]}
        var movieNames = [String]()
        for movie in movies {
            movieNames.append(movie.name ?? "")
        }
        return movieNames
    }
    
    class func saveMovies(movies: [Movie]?) {
        let movieNames = stringNamesFromMovieArray(movies: movies)
        userdefaults.setValue(movieNames, forKey: movieString)
        //userdefaults.setValue(value: movies, forKey: movieString)
    }
    
    class func loadMovies() -> [Movie]? {
        guard let movieNames = userdefaults.value(forKey: movieString) as? [String] else {return nil}
        let movies = moviesFromStringArray(movieNames: movieNames)
        return movies
    }
}
