//
//  MovieController.swift
//  Movie List
//
//  Created by Chris Price on 5/3/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import Foundation

class MovieController {
    
    init() {
        loadFromPersistentStore()
    }
    
    func saveToPersistentStore() {
        guard let fileURL = persistentFileURL else {return}
        do {
            let encoder = PropertyListEncoder()
            let movieListData = try encoder.encode(movies)
            try movieListData.write(to: fileURL)
        } catch {
            print("Error encoding movies array: \(error).")
        }
    }
    
    func loadFromPersistentStore() {
        guard let fileURL = persistentFileURL else {return}
        do {
            let movieListData = try Data(contentsOf: fileURL)
            let decoder = PropertyListDecoder()
            let movies = try decoder.decode([Movie].self, from: movieListData)
            self.movies = movies
        } catch {
            print("Error decoding movie array: \(error).")
        }
    }
    
    func createMovie(with title: String) {
        let movie = Movie(movie: title)
        movies.append(movie)
    }
    
    func toggleWasSeen(for movie: Movie) {
        movie.wasSeen = !movie.wasSeen
    }
    
    var movies: [Movie] = [Movie]()
    
    var persistentFileURL: URL? {
        let fileManager = FileManager.default
        guard let documents = fileManager.urls(for: .documentDirectory, in: .userDomainMask).first else {return nil}
        return documents.appendingPathComponent("movieList.plist")   // Not sure if this is correct. 1:51:00 on the ios14 vid
    }
    
    //2:00:00 = do, try, catch in ios14 vid.
    
}
