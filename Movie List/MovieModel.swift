//
//  MovieModel.swift
//  Movie List
//
//  Created by Moses Robinson on 1/11/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import UIKit

class MovieModel {
    static let shared = MovieModel()
    private init() {}
    
    private var movies: [String] = []
    
    func addMovie(_ movie: String) {
        movies.append(movie)
        saveData()
    }
    
    func removeMovie(at index: Int) {
        movies.remove(at: index)
        saveData()
    }
    
    func moveMovie(from index: Int, to destinationIndex: Int) {
        let movie = movies.remove(at: index)
        movies.insert(movie, at: destinationIndex)
        saveData()
    }
    
    func movieCount() -> Int {
        return movies.count
    }
    
    func movie(at index: Int) -> String {
        return movies[index]
    }
    
    let fileURL = URL(fileURLWithPath: NSHomeDirectory())
        .appendingPathComponent("Library")
        .appendingPathComponent("ToDo")
        .appendingPathExtension("plist")
    
    func saveData() {
        try! (movies as NSArray).write(to: fileURL)
    }
    
    func loadData() {
        if let movies = NSArray(contentsOf: fileURL) as? [String] {
            self.movies = movies
        }
    }
}
