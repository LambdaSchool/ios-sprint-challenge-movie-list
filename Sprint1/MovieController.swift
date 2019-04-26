//
//  MovieController.swift
//  Sprint1
//
//  Created by Victor  on 4/26/19.
//  Copyright © 2019 com.Victor. All rights reserved.
//

import Foundation
import UIKit

class MovieController {
    //movie array to hold the data
    var movies: [Movie] = []
    
    func createMovie(name: String) {
        let movie = Movie(name: name)
        movies.append(movie)
    }
}
