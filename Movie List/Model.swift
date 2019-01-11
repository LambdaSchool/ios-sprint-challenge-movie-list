//
//  Model.swift
//  Movie List
//
//  Created by Cameron Dunn on 1/11/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import Foundation


var movieArray : [Movie] = []

class Model {
    static let shared = Model()
    func addMovie(movieToAdd : Movie){
        movieArray.append(movieToAdd)
        saveMovies()
    }
    func loadMovies(){
        movieArray = UserDefaults.standard.object(forKey: "MoviesSave") as? [Movie] ?? []
    }
    func saveMovies(){
        UserDefaults.standard.set(movieArray, forKey: "MoviesSave")
    }
    func deleteMovie(indexPath: Int){
        movieArray.remove(at: indexPath)
        saveMovies()
    }
    func moveMovie(from : Int, to: Int){
        let movieHolder = movieArray[to]
        movieArray[to] = movieArray[from]
        movieArray[from] = movieHolder
        saveMovies()
    }
}
