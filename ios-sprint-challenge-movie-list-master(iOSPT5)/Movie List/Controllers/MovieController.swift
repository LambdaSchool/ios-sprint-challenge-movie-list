//
//  MovieController.swift
//  Movie List
//
//  Created by David Williams on 2/11/20.
//  Copyright © 2020 Lambda School. All rights reserved.
//

import Foundation

class MovieController {
    
private(set) var movies: [Movie] = []
    
    init() {
        loadFromPersistentStore()
    }
    
    func toggleHasBeenSeen(cell: Movie) {
        guard let index = movies.firstIndex(of: cell) else { return }
        movies[index].seenNotSeen.toggle()
    }
    
    var movieListURL: URL? {
        let fileManager = FileManager.default
        guard let documents = fileManager.urls(for: .documentDirectory, in: .userDomainMask).first else { return nil }
        
        return documents.appendingPathComponent("movieList.plist")
    }
    
    func saveToPersistentStore() {
        do {
            guard let url = movieListURL else { return }
            let encoder = PropertyListEncoder()
            let moviesData = try encoder.encode(movies)
            try moviesData.write(to: url)
        } catch {
            print("Error writing to movies data: \(error)")
        }
    }
    
    func loadFromPersistentStore() {
        do {
            guard let url = movieListURL else { return }
            let moviesData = try Data(contentsOf: url)
            let decodeMovies = PropertyListDecoder()
            movies = try decodeMovies.decode([Movie].self, from: moviesData)
        } catch {
            print("Error loading movies data \(error)")
        }
    }
    
    @discardableResult func createMovie(named name: String, year: String, hasBeenSeen: Bool = false) -> Movie {
        let movie = Movie(name: name, year: year, seenNotSeen: hasBeenSeen)
        movies.append(movie)
        saveToPersistentStore()
        return movie
    }
    
    func deleteMovie(which movie: Movie) {
        guard let index = movies.firstIndex(of: movie) else { return }
        movies.remove(at: index)
        saveToPersistentStore()
    }
    
    func updateHasBeenSeen(for movie: Movie) {
        guard let index = movies.firstIndex(of: movie) else { return }
        movies[index].seenNotSeen.toggle()
        saveToPersistentStore()
    }
    
    func editMovie(movie: Movie, _ name: String? = nil, year: String? = nil) {
        guard let index = movies.firstIndex(of: movie) else { return }
        if let name = name {
            movies[index].name = name
        }
        if let year = year {
            movies[index].year =  year
        }
        saveToPersistentStore()
    }
}
