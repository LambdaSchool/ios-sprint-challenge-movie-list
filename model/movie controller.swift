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
    
    
    func assignMovie( with title: String) {
      let film = Movie(movie: title)
        movie.append(film)
    
    }
    
    
}
