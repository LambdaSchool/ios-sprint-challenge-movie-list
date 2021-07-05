//
//  MovieController.swift
//  Movie List
//
//  Created by Jeremy Taylor on 5/4/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import Foundation

class MovieController {
    init() {
        loadFromPersistentStore()
    }
    
    private (set) var movies: [Movie] = []
    
    func createMovie(withTitle title: String) {
        let movie = Movie(title: title)
        movies.append(movie)
    }
    
    func editMovie(at index: Int, withNewTitle title: String) {
        let movie = movies[index]
        movie.title = title
        
    }
    
    func deleteMovie(at index: Int) {
        movies.remove(at: index)
        
    }
    
    //MARK: - Persistence
    
    func saveToPersistentStore() {
        guard let url = persistentFileURL else { return }
        
        do {
            let encoder = PropertyListEncoder()
            let data = try encoder.encode(movies)
            try data.write(to: url)
        } catch {
            
        }
        
    }
    func loadFromPersistentStore() {
        let fm = FileManager.default
        guard let url = persistentFileURL, fm.fileExists(atPath: url.path) else { return }
        
        do {
            let data = try Data(contentsOf: url)
            let decoder = PropertyListDecoder()
            movies = try decoder.decode([Movie].self, from: data)
            
        } catch {
            NSLog("Error loading movies data: \(error)")
        }
    }
    
    private var persistentFileURL: URL? {
        let fm = FileManager.default
        guard let documentsDir = fm.urls(for: .documentDirectory, in: .userDomainMask).first else { return nil }
        
        return documentsDir.appendingPathComponent("movies.plist")
    }
}
