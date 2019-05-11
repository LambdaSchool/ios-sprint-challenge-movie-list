//
//  MovieController.swift
//  Movie List
//
//  Created by Nathan Hedgeman on 5/4/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import Foundation


class MovieController {
    //movieList holds all movie data
    
    init(){
        //Debugging
        //AddMovie(title: "Star Wars")
    }
    var movieList: [Movie] = []
    
    func AddMovie(title: String){
        
        let newMovie = Movie(title: title, isSeen: false)
        
        movieList.append(newMovie)
    }
    
    func tapIsSeen(movie: Movie){
        
        movie.isSeen = !movie.isSeen
        
    }
    
    /*func DeleteMovie(movie: Movie){
        guard movieList.firstIndex(of: movie) != nil else {return}
    }*/


}
