//
//  movie controller.swift
//  Movie List
//
//  Created by Brian Vilchez on 4/28/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import Foundation

class MovieController {
    
    var movie: [Movie] = []
    
    init() {
        
        /// movie test Data
        assignMovie(with: "star wars")
        assignMovie(with: "aliens")
        assignMovie(with: "spiderman")
        assignMovie(with: "knd: operation zero")
    }
    
    func assignMovie( with title: String) {
      let film = Movie(movie: title)
        movie.append(film)
    
    }
    
    
}
