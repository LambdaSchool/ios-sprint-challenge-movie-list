//
//  MovieController.swift
//  MovieList
//
//  Created by Waseem Idelbi on 2/10/20.
//  Copyright © 2020 Waseem Idelbi. All rights reserved.
//

import UIKit

class MovieController {
    
    var movieArray: [Movie] = [Movie(name: "SpiderMan")]

    func add(movie: Movie) {
        movieArray.append(movie)
    }
    
    func update(movie: Movie, seen: Bool) {
        guard let index = movieArray.firstIndex(of: movie) else {return}
        movieArray[index].seen = seen
    }
    
    func delete(movie: Movie) {
        guard let index = movieArray.firstIndex(of: movie) else {return}
        movieArray.remove(at: index)
        
    }
}
