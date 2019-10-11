//
//  Movie.swift
//  Movie List
//
//  Created by morse on 10/11/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import Foundation

struct Movie: Codable {
    let name: String
    var watched: Bool = false
    
    static var ArchiveURL: URL {
        let documentsDirectory = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask).first!
        let archiveURL = documentsDirectory.appendingPathComponent("movies").appendingPathExtension("plist")
        return archiveURL
    }
    
    static func saveToFile(movies: [Movie]) {
        let propertyListEncoder = PropertyListEncoder()
        let encodedMovies = try? propertyListEncoder.encode(movies)
        try? encodedMovies?.write(to: Movie.ArchiveURL, options: .noFileProtection)
    }
    
    static func loadFromFile() -> [Movie] {
        let propertyListDecoder = PropertyListDecoder()
        if let retrievedEmojisData = try? Data(contentsOf: Movie.ArchiveURL) {
            let decodedEmojis = try? propertyListDecoder.decode([Movie].self, from: retrievedEmojisData)
            guard let emojis = decodedEmojis else { return [] }
            return emojis
        }
        return []
    }
}
