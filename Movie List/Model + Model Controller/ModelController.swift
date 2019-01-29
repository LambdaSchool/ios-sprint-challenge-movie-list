//
//  ModelController.swift
//  Movie List
//
//  Created by Stuart on 1/12/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import Foundation

class MovieController {
    static let shared = MovieController()
    
    // Initializer
    init() {
        loadFromPersistentStore()
    }

    // Create
    func createMovie(title: String) {
        let movie = Movie(title: title)
        movies.append(movie)
        
        saveToPersistentStore()
    }
    
    // Read
    func movieToShow(at index: Int) -> String {
        return movies[index].title
    }
    
    // Update
    func toggleHasSeen (_ movie: Movie) {
        movie.hasSeen = !movie.hasSeen
        
        saveToPersistentStore()
    }
    
    // Delete
    func deleteMovie(at index: Int) {
        movies.remove(at: index)
        
        saveToPersistentStore()
    }
    
    func moveRow(at index: Int, to newIndex: Int) {
        let movie = movies.remove(at: index)
        movies.insert(movie, at: newIndex)
        
        saveToPersistentStore()
    }
    
    private(set) var movies: [Movie] = []
    
    
    // Persistence
    
    // Computed property to get the path to the shopping items array plist file
    private var persistentStoreURL: URL? {
        guard let documentsURL = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask).first else { return nil }
        let fileName = "movies.plist"
        
        return documentsURL.appendingPathComponent(fileName)
    }
    
    // Private method to encode the data and write it to disk
    private func saveToPersistentStore() {
        guard let url = persistentStoreURL else { return }
        let plistEncoder = PropertyListEncoder()
        
        do {
            let movieData = try plistEncoder.encode(movies)
            try movieData.write(to: url)
        } catch {
            NSLog("Error saving data to persistent store: \(error)")
        }
    }
    
    // Private method to read the data from disk and decode it
    private func loadFromPersistentStore() {
        guard let url = persistentStoreURL,
            FileManager.default.fileExists(atPath: url.path) else { return }
        let plistDecoder = PropertyListDecoder()
        
        do {
            let movieData = try Data(contentsOf: url)
            movies = try plistDecoder.decode([Movie].self, from: movieData)
        } catch {
            NSLog("Error reading data from persistent store: \(error)")
        }
    }
}
