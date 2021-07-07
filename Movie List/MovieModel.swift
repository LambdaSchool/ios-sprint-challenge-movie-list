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
    
    func addMovie(_ title: String) {
        let movie = Movie(title: title)
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
    
    func movie(at index: Int) -> Movie {
        return movies[index]
    }
    
    // Persistence
    
    let fileURL = URL(fileURLWithPath: NSHomeDirectory())
        .appendingPathComponent("Library")
        .appendingPathComponent("MovieList")
        .appendingPathExtension("plist")
    
    func saveData() {
        let encoder = PropertyListEncoder()
        do {
            let moviesData = try encoder.encode(movies)
            try moviesData.write(to: fileURL)
        } catch {
            print(error)
        }
    }
    
    func loadData() {
        let decoder = PropertyListDecoder()
        do {
            let data = try Data(contentsOf: fileURL)
            let decodedMovies = try decoder.decode([Movie].self, from: data)
            movies = decodedMovies
        } catch {
            print(error)
        }
    }
    
    //MARK: - Properties
    
    private(set) var movies: [Movie] = []
}
