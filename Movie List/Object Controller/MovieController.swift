//
//  MovieController.swift
//  Movie List
//
//  Created by Andrew Liao on 7/27/18.
//  Copyright © 2018 Lambda School. All rights reserved.
//

import Foundation

class MovieController {
    //Mark: Methods
    func createMovie(withTitle title:String, hasSeen:Bool = false){
        let newMovie = Movie(title: title, hasSeen: hasSeen)
        movieList.append(newMovie)
    }
    
    func changeSeenStatus(movie:Movie) {
        guard let index = movieList.index(of: movie) else {return}
        if movie.hasSeen {
            movieList[index].hasSeen = false
        } else {
            movieList[index].hasSeen = true
        }
        
    }
    
    func reportSeen(movie:Movie)->String{
        let hasSeen = movie.hasSeen ? "Seen" : "Not Seen"
        return hasSeen
    }
    
    func deleteMovie(movie:Movie){
        guard let index = movieList.index(of: movie) else {return}
        movieList.remove(at: index)
    }
    
    //Mark: Properties
    private(set) var movieList = [Movie]()
}
