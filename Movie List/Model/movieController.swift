//
//  movieController.swift
//  Movie List
//
//  Created by Alex Rhodes on 8/16/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import Foundation
import UIKit

class MovieController {
    
    var movies: [Movie] = [Movie(name: "Forrest Gump", director: "<#T##String#>", releaseDate: <#T##Date#>, image: <#T##UIImage?#>)]
    
    func addMovie(name: String, director: String, date: Date, image: UIImage) {
        let movie = Movie(name: name, director: director, releaseDate: date, image: image)
        movies.append(movie)
    }
    
    func deleteMovie(movie: Movie) {
        
    }
}
