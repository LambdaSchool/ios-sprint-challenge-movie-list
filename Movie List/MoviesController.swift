//
//  MoviesController.swift
//  Movie List
//
//  Created by Alex Perse on 4/27/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import Foundation

class MoviesController {
    
    static let shared = MoviesController()
    
    var movies: [String] = [] {
        didSet {
            print(movies)
        }
    }

}
