//
//  Model.swift
//  Movie List
//
//  Created by Austin Cole on 11/9/18.
//  Copyright © 2018 Lambda School. All rights reserved.
//

import Foundation

class Model {

    static let shared = Model()
    private var movies: [String] = ["My Favorite Movie"]

    func addMovie(movie: String) {
        print ("appended")
        movies.append(movie)
    }
    
    func removeMovie(index: Int) {
        movies.remove(at: index)
    }
    
    func moviesCount () -> Int {
        return movies.count
    }
    
    func movie(at index: Int) -> String {
        return movies[index]
    }
    
    let fileURL = URL(fileURLWithPath: NSHomeDirectory())
        .appendingPathComponent("Library")
        .appendingPathComponent("Movies")
        .appendingPathExtension("plist")
    
    func saveData() {
        try! (movies as NSArray).write(to: fileURL)
    }
    
    func loadData() {
        if let items = NSArray(contentsOf: fileURL) as? [String] {
            movies = items
        }
    
    }
}
