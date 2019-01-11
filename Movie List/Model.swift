//
//  Model.swift
//  Movie List
//
//  Created by Dustin Koch on 1/11/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import Foundation


class Model {
    static let shared = Model()
    private init() {}
    
    var movies: [String] = []
    
    func addMovie(_ item: String) {
        Model.shared.movies.append(item)
    }
    
    func removeMovie(at index: Int) {
        Model.shared.movies.remove(at: index)
    }
    
    func movieCount() -> Int {
        return movies.count
    }
    
    func movie(at index: Int) -> String {
        return movies[index]
    }
    
}
