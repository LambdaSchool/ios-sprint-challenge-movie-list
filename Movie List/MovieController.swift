//
//  MovieController.swift
//  Movie List
//
//  Created by Rick Wolter on 8/31/18.
//  Copyright © 2018 Lambda School. All rights reserved.
//

import Foundation


class MovieController {
    
  //  init(){}
    
    
    func creatMovie( title: String, hasBeenSeen: Bool = false ){
        
        let movie = Movie(title: title,hasBeenSeen: hasBeenSeen)
        
        movies.append(movie)
    }
    
    
    
    
    //C-R-U-D
    
    
    
    func deleteMovie(movie: Movie){
        
        guard let movieIndex = movies.index(of: movie) else {return}
        
        movies.remove(at: movieIndex)
        
    
    }
    var movies: [Movie] = []
    
}
