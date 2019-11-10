//
//  MovieController.swift
//  Movie List
//
//  Created by Lambda_School_Loaner_220 on 11/8/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import Foundation

class MovieController
{
    var movies: [Movie] = []
    
    func add(movie: Movie)
    {
        movies.append(movie)
    }
    
    func updatedHasSeen(movie: Movie)
    {
        guard let indexPath = movies.firstIndex(of: movie) else {return}
        var singleMovie = movies[indexPath]
        singleMovie.hasSeen.toggle()
        
    }
}
